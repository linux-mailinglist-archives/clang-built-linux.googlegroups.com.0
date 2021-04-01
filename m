Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDELTGBQMGQEECB5KCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B78635226E
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 00:13:33 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id j1sf4951587ioo.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 15:13:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617315212; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kd8qbsb9iyfJSpsobqFdwzBHo29mPhrk/JCLYUvdSQbsj1aZ6mXYIHCcCdmIeuYOwq
         kJR/QEIzn8cDHh1NcqNDjlJiiwQjC3V+nlw/q74cUBWda0pRk5zISFJ++VpZ6m2HTu24
         Va9qh6Sz4mTQ0Z3mo83t6wVXsdigAgLTI/bQVkh0CNIHoTaRW/2hakCyDm5Xj28RUnhi
         2lSqMg6n2Wy05dUvlC7tRkWodqvC32WsAqrJ5GuuA4hPu4R3N/fy1Fpm+IbjaNfqVnTo
         JmVA4z0Lr8aWu56xsqrxkqVUkZ2Gh0gn05CjPd4a6DPkjAGLiS7fuUy+J+DwXvaTO8eU
         i3vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2q1Y+LbAVX7OA2r9ICjE1hmCW8aa+iyzUs1nUG9Snoc=;
        b=EOsEdGew+2tYddSL0o0ZrS7u1h7em2NhVF2RvknEXCVbHwAHlNqPolVRexFYf39WbG
         sk0bwPsVSKt3FwJVtDqLzvUcQvCndGC6/1EsLZGWV1xqKGkkDyMAQ5YL5TwvrwpeK3Gi
         zFI5LtBlOsm5pLxsNplENTS8/MM/SrcA/4WEIfwJoakDJZaXWM8y7+HJKJb/jUVG8Vms
         +3w0mr/Gqs/itMik4NCUPwB+36CrBaKO07JJG6unMDKZBA7KiaG019KDzMTQEM8aqQJJ
         FqpbJO/58pnSzQfnHr2v7MxZino682bkkwsCTXevDzgtcE4zggQwe5gQ1dVRDe6H53Tl
         as1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MVcoIZrQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2q1Y+LbAVX7OA2r9ICjE1hmCW8aa+iyzUs1nUG9Snoc=;
        b=jyWNE1Q+SPvBr0lbkoxjIJu+RVkjLTqFwZ9HJE2oTd6rfGMFGxOOLtevB8+hqOJC1Q
         dbPxrIqe8Hvc9+NHZENTpLAJLAMeCh7FspVy5yn8bAtXM6xA87NnkfVSqlJFQfCns9b/
         GL2pki51OMbpZnkvDuB9R0k0Lv42fGj8mDCdf2RcAOkHwnR1XT50bTEb3xfe//jeJAVj
         NKb7+3hJQRbgLNrIO5qiMKhBINozWd7fyq6KMhBIwOy/MvYE0ymgAKK4D9l4yXyrdg59
         TbQP3SGQ+XRatfuE9NLgn3Coebn5JfYLWXeOqq2WfdMKUu3FXJtg0wXmTxlj6c1t4sfh
         HQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2q1Y+LbAVX7OA2r9ICjE1hmCW8aa+iyzUs1nUG9Snoc=;
        b=W+B6MXd+vA/L15CdbRU3J1qYQ1UufwCxGmipPDxs7LjkQW4g7G+qK1CwJU4XygSjKA
         BdXWr36TXH50DdYjVmrQWVaYrcjxfpFFHFNB3nYRJyBfca65jgCFKFzM0gP2/BSBpPHe
         NVghMQgZXYNHxu3L/6h+3rjsiDnwHUYlIGz87n5RAIKMDiD8I3H/A1owwNDZ5VkEEc5V
         j9291Cb4O+NmVQit5Bb2jf8zCayZI6bZbGL/1wah+2Ok7t31UJignISf/aUOSlh/sfOi
         dazq8oRm5sOyP9Tf3Er7fEaIOXAmrQMoUX/X+jv7H1EzkhLcknirK95O72ICJTnJvziD
         K4bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lE7VJg+aX8CFSXNSOMmxS5u8L4rvEim271tzPCvX48nqXy99g
	SSzTK/Fk7jSLP3t9F/kC22U=
X-Google-Smtp-Source: ABdhPJynbnEa90RhQ7HX+Gxk8CyRrO3P5hh3oo7qVWLInZ9Dl+POPej+LgEXq8bhQUYRXVfxTFAL4A==
X-Received: by 2002:a92:c983:: with SMTP id y3mr8544213iln.220.1617315212322;
        Thu, 01 Apr 2021 15:13:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:11ad:: with SMTP id 13ls1700325ilj.0.gmail; Thu, 01
 Apr 2021 15:13:32 -0700 (PDT)
X-Received: by 2002:a92:c26e:: with SMTP id h14mr4030670ild.33.1617315211972;
        Thu, 01 Apr 2021 15:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617315211; cv=none;
        d=google.com; s=arc-20160816;
        b=DDtpXlWvu27ZXl3Ed5z58ef2oybLFXTOZtaQb2R40pzzR/GB5UiMtYX1KsqaL1lK2I
         g0B/xoOpF3kMyAPDJLFmEafmrXjcfGxD6HKGC784i/vsLZYQvfgx0T7ER038BTOxIsxb
         x/2VSUW3DeggY+acL4HexRDCTNM49Y7TmTBWK2LACKITevjMTAw2lgRP1eqKDESVHlCr
         K4CkNrJJg2Exbl1WUkVGR10aghebuRvLHf3dvrUeVq3UE/waC1GK1CN0rPYQMihFIl/9
         AWbyHwg6aZ8JtQYLk+tnc5y6h5UhDYdRDc2OE3Hk+mj8PQza93qSjKjZ8lGepcQJT8D9
         2j6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+ed7VreEWmipFlx5jenlD6GzJkKJrcT4I8s/OqzA0i0=;
        b=Pd87QWfTLUxHARvIiFdtNBpi6izm3N82cCEyeNtC02VTARt/7fCzF+WnDzBLiufntk
         9zZ7iWicYKtdel2Lt00QfzF2FXQ9p8c5w2dGKDqaDSPOzsdm5ZhbBNx+lFd9txGWJiYD
         SlHpW5eh9TwsRXZr1zdKtYBdYCpeHNquFBa5OD56vez+RdiYotn24JR6LABe4Q/e/01g
         UkvFfe/oxDEQlBiFAHWZ9YGrn2MmjxdqyXaRv2b4sjOqx0Uyydd8LKwb9lDZB0j6T3Zm
         DNbopXZeN54cmBSylQJpgH56O21zKDkW2MVPiX9W1KK8pWV9wiUY+KRqyCwByixo85Yr
         lXgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MVcoIZrQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id i2si436493iov.2.2021.04.01.15.13.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 15:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id c204so2428691pfc.4
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 15:13:31 -0700 (PDT)
X-Received: by 2002:a62:2742:0:b029:222:b711:3324 with SMTP id n63-20020a6227420000b0290222b7113324mr9372178pfn.7.1617315211421;
        Thu, 01 Apr 2021 15:13:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id fr23sm6380245pjb.22.2021.04.01.15.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 15:13:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Christoph Hellwig <hch@lst.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Shuah Khan <shuah@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v4 2/3] seq_file: Fix clang warning for NULL pointer arithmetic
Date: Thu,  1 Apr 2021 15:13:19 -0700
Message-Id: <20210401221320.2717732-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401221320.2717732-1-keescook@chromium.org>
References: <20210401221320.2717732-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=072ba8d0292080bbec63f540b8a7b8f4388d46e0; i=X28+TLSj6UAzyfUwM6ASBpL0O+6znj4kpkRLU6W477w=; m=BVZ7UGjppHc9pxpbNOtE+k2Mc/TPPXIP/bm3a5RPhjA=; p=bMQkNyH1GTm6eEjiE8Zl6RhCNwohxteBG+pqB7gCs1I=
X-Patch-Sig: m=pgp; i=arnd@arndb.de; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmBmRX8ACgkQiXL039xtwCaLMg/+Lhx pOKAP38pEErrYMo+5DOvXlMaNUoctJ8O82UArlKz1tK0WnGh/2r6wsUb57mBRxiEm1Fqs4js4duAl kR7kxnB0PYJgEVpDX2mbErnsMYYEpTK2OPrFPfuXpogkv7ZzBTR8dfQwxETzu+yBfjnn1DmRNqIVF j9TrK2uBIE7lwsIWWyEuuEVYoZ68xhrJ9IrQ1ZLE5fA4VF/woqhbJKXQAUimIgUO6mvg9OJpISbWs CYQxi2njTOqAtu8mSsyhsuBuW8KV+G/PeM0oSqythjF6LKzULC86d3WEH6aEazn2znU7/frImFMxl UhkTHmOfkr/tMJyxO8jDuPjpXytP0fmIkpOSgNIh7PlQgLWXf5+OkbCoU/WSTY1jR27M7+HAvGd7Q C9hYO6odGUvbXgyGVaruHYEZfTQ/1Mym/duFmytroX4JG8bnj5gVv9L01vETRRa9WSeP6Fj8vzxoA ko6fy/Oq77nJ2SiA//Z1h3wNCzGagcTHRAh96xkDD1FzytY3Hjb8tbTwBZsYvlmvjQnyscKPBUPHc N8EC5Bc7vZPFKzPf53UMw/NirSq1etb50K5J7aWmAbmgJm+qryafE51E/Xvd/uaOrzjdypKRhuxGN uCHmvLBr6U1WaTio88kV78F55LIb9pgl0iVP+4UV7wscGidMpLzJGIVSeO8qaN5w=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MVcoIZrQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

From: Arnd Bergmann <arnd@arndb.de>

Clang points out that adding something to NULL is not allowed in
standard C:

fs/kernfs/file.c:127:15: warning: performing pointer arithmetic on a
null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                return NULL + !*ppos;
                       ~~~~ ^
fs/seq_file.c:529:14: warning: performing pointer arithmetic on a
null pointer has undefined behavior [-Wnull-pointer-arithmetic]
        return NULL + (*pos == 0);

Rephrase the code to be extra explicit about the valid, giving them
named SEQ_OPEN_EOF and SEQ_OPEN_SINGLE definitions.  The instance in
kernfs was copied from single_start, so fix both at once.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Fixes: c2b19daf6760 ("sysfs, kernfs: prepare read path for kernfs")
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Kees Cook <keescook@chromium.org>
Link: https://lore.kernel.org/r/20201028151202.3074398-1-arnd@kernel.org
---
 fs/kernfs/file.c         | 9 ++++++---
 fs/seq_file.c            | 5 ++++-
 include/linux/seq_file.h | 6 ++++++
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/fs/kernfs/file.c b/fs/kernfs/file.c
index c75719312147..721bcbc1d4d0 100644
--- a/fs/kernfs/file.c
+++ b/fs/kernfs/file.c
@@ -122,10 +122,13 @@ static void *kernfs_seq_start(struct seq_file *sf, loff_t *ppos)
 		return next;
 	} else {
 		/*
-		 * The same behavior and code as single_open().  Returns
-		 * !NULL if pos is at the beginning; otherwise, NULL.
+		 * The same behavior and code as single_open().  Continues
+		 * if pos is at the beginning; otherwise, NULL.
 		 */
-		return NULL + !*ppos;
+		if (*ppos)
+			return NULL;
+
+		return SEQ_OPEN_SINGLE;
 	}
 }
 
diff --git a/fs/seq_file.c b/fs/seq_file.c
index cb11a34fb871..1b5bd95d0a48 100644
--- a/fs/seq_file.c
+++ b/fs/seq_file.c
@@ -542,7 +542,10 @@ EXPORT_SYMBOL(seq_dentry);
 
 static void *single_start(struct seq_file *p, loff_t *pos)
 {
-	return NULL + (*pos == 0);
+	if (*pos)
+		return NULL;
+
+	return SEQ_OPEN_SINGLE;
 }
 
 static void *single_next(struct seq_file *p, void *v, loff_t *pos)
diff --git a/include/linux/seq_file.h b/include/linux/seq_file.h
index b83b3ae3c877..51c870765bfd 100644
--- a/include/linux/seq_file.h
+++ b/include/linux/seq_file.h
@@ -37,6 +37,12 @@ struct seq_operations {
 
 #define SEQ_SKIP 1
 
+/*
+ * op->start must return a non-NULL pointer for single_open(),
+ * this is used when we don't care about the specific value.
+ */
+#define SEQ_OPEN_SINGLE ((void *)1)
+
 /**
  * seq_has_overflowed - check if the buffer has overflowed
  * @m: the seq_file handle
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401221320.2717732-3-keescook%40chromium.org.
