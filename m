Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEGP6KEAMGQEUJIKEPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC223EFC4B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:17 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id d12-20020a6b680c000000b005b86e36a1f4sf624381ioc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267857; cv=pass;
        d=google.com; s=arc-20160816;
        b=MpcF+OyC9VbdOutOk2m+P+sVn21a/hzzAL0gPVtHV4dJiiiqTG42jZzHMOKT5WBqoS
         fhoukqfs/WeOYShtll03gY49cVoUs8awLTM5OANKldMJWHwps8XTQHk4IYsBaIGRkU+1
         cmlMl+Dg2OLYiddt2p9PbF2Y9HFuo4nw4jy3Hd0nSCHczLGhdv0UStDQQ2qSNp9MGEyQ
         vStl/k6AsQl5yERKd4zOB8tZAMtr5sLZtZJwxhDVMKOMwigZWiO0FQxxa+ObzLUPcnur
         1GRU2C0drYqYn87gRdPflgOvtG7pSl7O5VamxCVneLSllXoyBl6VlktVt2vR3G801P3W
         cM3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L2X7WQslmrUkt3aTx3NcQ91GN4C3ZIGCHEvdJ9rEDcc=;
        b=O48zG5bnukUxLsn6+8PyF5VIaXWuPZ87PW3lpiz8G0gSe+1a28+TWChue8nEhnceRV
         FCEjiyAaCrPin0eNJEuH42sJFxx4je8TB9t9N3cs3RC3h2ouPYoFmoEq5b95e6ycJuHk
         ia22vXSNNBcqGwJoosoAx8T3TJBbvmfTLiem+zBRH0SOBvVSCX+8MG7caBZpBd/KbDtr
         vq0Y07ng72WY5WpoUAv3xLY+E/5OjYXOskj3vNBe+W/heTzpBJh5ePRw8XGNewb9UPhj
         pzyI+1Xcz7hTZgcxCVDiJFbaSZhtul003LQnVWkQuK7Umy9zweGwHneWTGS6MD4+GA1A
         VDjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=h1vqsKCq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L2X7WQslmrUkt3aTx3NcQ91GN4C3ZIGCHEvdJ9rEDcc=;
        b=Mxuo/YpONuwstBy0Sa9qbjab3UmrcBW5I4G7TguDjHqSJafJuyHdB/SZ3K2dc/yX+/
         /yolalJTV5H0cT8ol8ZrzjlZAWNEX/djkBxbZ/knUlaK9zNZ7uZIs5HkE8QwSugB0eHr
         +F+Im8kAhsWhKajqDwAgTkPyDKJDnHiDK5LHTl1CBkL0zUqYFO1N5DukNFuUkVEkRFiX
         Tm4uNiRahsdw9E18cyik7opFz3g+7JLh9MdBk4rUbIZT72WoXnfFj16Y19TEt9aO7h3R
         PztYLymyCo5o1IQ5sh4OSfFsWEiAHNW22vNzVbUKojeo60UeQ7j5bsMYO0cCjFyq3ZYG
         Boug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L2X7WQslmrUkt3aTx3NcQ91GN4C3ZIGCHEvdJ9rEDcc=;
        b=i9nYDu7wX63SeOWr3/PC5UWwOC7qRYWt6B7s1/7FA4Nmvm74/m+kIkpmvtn08yFZoB
         1ixqkcE5M/h28qzvfRnaTrVHnc4Rk1Hzqgn+dnEACK0cmqtuSS5xP8WfWEUZ/DL1OSq5
         iRRkLs2DT6IkibXW5h5M+Hxnkv+ul8JsjhmzgzEaAeLzChzDXV4MhGiw3XuAfUWhyb3k
         FOq5TPyvTdsfQNKbjfGoJT+tL27FTXNpr82R0Nucf/7Yh15Fy1z3//OFlcBQi57uZ2YQ
         DiGN/2ObFWQJt4YfJR6WJ1FSUhFmjQ7wSTeeh01ihU9Bq6kD6DNEJ3MsoqWM/zUsM/YO
         SSvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nUH8WLflBppKESmVBu/Yk3YW7WKO7WFL9u11Kzsbx+qGFi9rS
	hqTIKHGlxyLIa2EjxS2pS6Y=
X-Google-Smtp-Source: ABdhPJwH0LwQRWFZ4A6mXxPzml0aFqvyHtuQO59v44Vh0xUxrtYD1Qj8me8SC1/749x8b31Ajg0LOg==
X-Received: by 2002:a92:6711:: with SMTP id b17mr5098800ilc.122.1629267856987;
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c7d1:: with SMTP id g17ls280094ilk.3.gmail; Tue, 17 Aug
 2021 23:24:16 -0700 (PDT)
X-Received: by 2002:a92:3607:: with SMTP id d7mr5066386ila.5.1629267856646;
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267856; cv=none;
        d=google.com; s=arc-20160816;
        b=DlwgjOt6EQW/k/pEfQzCKyLNABsWgOOFdXNVtM+T8rlg9C2d8bWvlqDwl48qcK9JVr
         IFSUwiLEhU1qTSh7BrETps1l/RKcY/yZlvgRHTTSon13oa0BvC+NlRZ2XLdAhtYA0ezr
         vx6f5gwOlZ2mJmNtyw7Lv+9Oo19TY6FfeOUZTUMfBnpd0c7ZplMdPpwqMHYH+sKRcsPg
         B8ird/kaw1uerHVj6D4vXzgVkpe7sXIHtofeSD0VjHjbMLXvf6lv8p23wF0GxERJPi8/
         qkj6D3ZPBza/gb7X/b9ub2QBBA6Dbd+TkvT2hAk+8wBDKAoynBAzPM9c30TpmlS21eJI
         RpKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=k/wMqZhYPv/ednyUtGVLuOyBDdwE/DxTOa1GSHOTwQw=;
        b=UoAT9Bb5Q7aBW4bVjKMi/L6edwJxwLm7nHhcJwf4K7Za4oLP9HAhyHqUkX76922Hu3
         Zp/mUy4mi7LOwAu7HCqHBjSaygzeQdw7s9hwv8XkQjBqgd+gOhS1jJKuzOIiEMTpO3e4
         5+nLK8GaaAEO+vOqHb0bDrzBKXctw5WKUOTksohQ7Rf6S2Nf/LKfMLIdzS9W/BU9hA+Z
         uGZJlzVAxT99akoP6eKL2kfQB41M80qi/jnNLDgYvURTySmJqETBcxyUKEUm4htC4DzK
         q6EJLOa6vyKiDEjKzfa9NHNUnhYyYanoj/sjyA/n9OF67yBrONyAzby3yOVHousWbb6D
         wpZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=h1vqsKCq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id j13si218775iow.1.2021.08.17.23.24.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id w68so1097390pfd.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
X-Received: by 2002:a62:1a03:0:b029:3e0:30aa:5172 with SMTP id a3-20020a621a030000b02903e030aa5172mr7615458pfa.69.1629267856113;
        Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p17sm3873060pjg.54.2021.08.17.23.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	linux-input@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 22/63] HID: cp2112: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:52 -0700
Message-Id: <20210818060533.3569517-23-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2247; h=from:subject; bh=/f7Uu4v/C7D/CabqYQdkLwI9T63RoTYSlGbQfk4by30=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMi/T6L3PaIJG69XO7seVV8nfPKvnO/RnRfY1YP eqF5TIqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIgAKCRCJcvTf3G3AJiqND/ 4o9z0rLLj4NSz3P+N5dEODqZN+0JFe68SJEpcnI/yqBAJ991CZgBW3P4hegMy7LP416vg4a8VXWuZf PdkwM1HtKI3bOIJmJ/oXuHc0Cd8E1/i9IdhWeZkwnk4ATdl52t6KiufRupzJ474wQ6gIOIfDj0KQ0R kyIFkhVeoA2Kr7NRe3qo9ChOoz9iHtgIp5yRu2OL9iopUm7HJMVli+T8Rkjfs1WdXgucAW17dFCaQf jscROMyLQGnCUMePS1yvQgUiFCFi1PlQtlLu+P7JTZudtLxFONjQCqvINDVVTB7e+TdY6/uBtgZzeK irTF7jSjV82n7MLfw4dCwSr5O2rrLJUaRZRfu6EiE2apChq5mvhSkWogW11l43Du1tv0vSY8wCE7XA sqKXkssO6OXrNOfPC9zrrUYQOnTwssqdo4orsoUV57XBYhxldJWv/VtIL/gNK2X1AMSQ2l2j8jVWtm /ZmkiVPYHo1cAbq84GdiW7UhznMM4bt9KCq8jxr7jM/YO6AI8nO2vNY/g02E3s1LVpfe2iqQHiaXcU HzwXGWuEQSSIRd009WPzQD3vPRqgiHua6vhSwtjUVgJ7mB06uFmWn0gFEj2FoGkgl1YLXKQ9crqUgL wCJdGavuSKwTapzMz2igVrV/qHEivZbe8115YGPQPbagYEoCWw+9D4gRcRag==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=h1vqsKCq;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct cp2112_string_report around members report,
length, type, and string, so they can be referenced together. This will
allow memcpy() and sizeof() to more easily reason about sizes, improve
readability, and avoid future warnings about writing beyond the end of
report.

"pahole" shows no size nor member offset changes to struct
cp2112_string_report.  "objdump -d" shows no meaningful object
code changes (i.e. only source line number induced differences.)

Cc: Jiri Kosina <jikos@kernel.org>
Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Cc: linux-input@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/hid/hid-cp2112.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/hid/hid-cp2112.c b/drivers/hid/hid-cp2112.c
index 477baa30889c..ece147d1a278 100644
--- a/drivers/hid/hid-cp2112.c
+++ b/drivers/hid/hid-cp2112.c
@@ -129,10 +129,12 @@ struct cp2112_xfer_status_report {
 
 struct cp2112_string_report {
 	u8 dummy;		/* force .string to be aligned */
-	u8 report;		/* CP2112_*_STRING */
-	u8 length;		/* length in bytes of everyting after .report */
-	u8 type;		/* USB_DT_STRING */
-	wchar_t string[30];	/* UTF16_LITTLE_ENDIAN string */
+	struct_group_attr(contents, __packed,
+		u8 report;		/* CP2112_*_STRING */
+		u8 length;		/* length in bytes of everything after .report */
+		u8 type;		/* USB_DT_STRING */
+		wchar_t string[30];	/* UTF16_LITTLE_ENDIAN string */
+	);
 } __packed;
 
 /* Number of times to request transfer status before giving up waiting for a
@@ -986,8 +988,8 @@ static ssize_t pstr_show(struct device *kdev,
 	u8 length;
 	int ret;
 
-	ret = cp2112_hid_get(hdev, attr->report, &report.report,
-			     sizeof(report) - 1, HID_FEATURE_REPORT);
+	ret = cp2112_hid_get(hdev, attr->report, (u8 *)&report.contents,
+			     sizeof(report.contents), HID_FEATURE_REPORT);
 	if (ret < 3) {
 		hid_err(hdev, "error reading %s string: %d\n", kattr->attr.name,
 			ret);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-23-keescook%40chromium.org.
