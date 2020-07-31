Return-Path: <clang-built-linux+bncBCIO53XE7YHBBPX5SH4QKGQERSGB3HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E79234C3B
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:27:43 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id d22sf21793564iom.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596227262; cv=pass;
        d=google.com; s=arc-20160816;
        b=vCa32Fdyjo9Na4ul9fOK1IuiCQt1+rpK8YTukoGb004JUzqgJI+k6cyzshSfPkuC8g
         bKat9s4Aav8cVzlNZLp/ywwgtpRMljAaUMiT35sU2v9RiyyxPIp5WM1lYpIy2UM/T4lC
         KRd/x1F6oQuQr1KoKodlKRc/Gk13g9lH2FLVvF+kXNYAOoqCLqnohGa2QJHrIoZ9xc+8
         wBerF0iIIuq5FqduAYm4hgJ1BCHf7vLLHsJnQ6cxfdYTIyOKTL8ya4C0JLymPvidsMmW
         wexx0MDGaHeWuLSWsNmUV2cGUB3sIH0DeV/cCvuCE1UeRfh6Y69GleftgqwfPHbDZE/Z
         sbgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5RMhmYwnUT12mPioZ7qRW1pch4DtgSv+oQpCnXlIqhk=;
        b=vPIWMLb3SSNrYMRdS8ykLgJk1hi3HUDq+K80+Qd6nVADF5/qVpCu7VbxRSmi2/tERx
         TYO0xb5pkmXIiC6Ve2Zvit5+KtfQxNvCmWVKAczP7V7NnJO01boXC0iCCavK5OYEUs6+
         EdRdo2/W16aDVjyhy7GUrz++horDQK0Z8oEMkJAWtquUkRu217DNZKNw4GvF75McJWvs
         GWTOAwk/AQLjFU/1x5hdmbjcBRI/DjnsgJsK88016b0oPtOgUZls6nLr8bkM34VeEsWX
         9uGNbDLc3lCrs3bMKMdiXOayAUu55tx5AzWu593DUY23aXeNt9DyHZigp8seuC4El+Nl
         DOtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5RMhmYwnUT12mPioZ7qRW1pch4DtgSv+oQpCnXlIqhk=;
        b=NCpyOoXDF/1Rw2MgxqxmU55PXW7vCQvxrxpxdvNOsLdf0YgfdiZwM5RFbEFYMzWYT4
         cQR3UkqOOSMmxzkxX6tuSTGE5ttMisvh1plqJlFxuGpLjvsa8NC6p39Ztf0i82HT2AyR
         xRHghm1muK6+/432rBvvBYyXi9t5SKWpWQtjm+YZJGHyCaPtGQXQtBksFNgxtYnByQRA
         DEdoF7SDzVZbY+QqXMyxbpnkMwUVgSmNzexwVp8LDMS78cr9shyeuZXcfLNJ60mvJRKe
         Hi0CUNIoDWc5Hk0SdCQ0/ET1/Z1KGgKN9xzU6D/iIGD7/pH0aQtqSQSvyONttH+Ash2O
         VmcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5RMhmYwnUT12mPioZ7qRW1pch4DtgSv+oQpCnXlIqhk=;
        b=DXtgEd8h3Y9uXzwlBB/wIf0L6MAHBhP0qhVQiFC24XykGkj1z4HerMpH4fm/YEdXF3
         uY+HFNgHdYV9gyKarKMCFUI9CupH50eIzuj900wGarAttDJWBTYYmOr5DVuzkrB16hiU
         6LYfppchifLUB8+lVEP/sWJC7UGPOvBQpEU+UL3bTUJduXocx/PYhHC2QkGDkpKB4q1M
         nLUcg99Exix/QMEzxwwPz4ix5/pX+i0LPF2tau7mXGnLnnrufBTUgz8CpoCyfMljDY6j
         RVbwR1QZAuI4dwkXJgjdjDgm4rZyyhVaHH2bZuR6bk2MPxuc9z4Kmzh1ew73360CQyJE
         6h4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OSqNBe/D17HCmYUWPDvkFASi4PGma34PQ+8+4Zuo9/UnyBOsZ
	QxzGB342qmfq8zG1Lt0BukA=
X-Google-Smtp-Source: ABdhPJw88kRv6pWulk7ZfeSgarfhdpXkCuaIntmiunY1k+jBJFdHR491lWSHEK+Wq5u1IJnwlsl4pA==
X-Received: by 2002:a92:c912:: with SMTP id t18mr5417229ilp.186.1596227262457;
        Fri, 31 Jul 2020 13:27:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5e4c:: with SMTP id s73ls2789576ilb.3.gmail; Fri, 31 Jul
 2020 13:27:41 -0700 (PDT)
X-Received: by 2002:a05:6e02:bf1:: with SMTP id d17mr5572460ilu.261.1596227261882;
        Fri, 31 Jul 2020 13:27:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596227261; cv=none;
        d=google.com; s=arc-20160816;
        b=AgpjLyscyUo0bY7vMs8H1K48FeNsCfqs5XbwCL0J8RsSzdLoxIhGwfCC1RYDWUiHoa
         RH+Rjxw0SIjnORF9peLk+8ip88cS9aJol4yg2iG8xMuZ/x5b0Djrp/97ACp2FR2sH1gH
         okhLyqocckUkRmQUTzP/Jb0Ya0qvIYE7lSfBK4y79tw2t0nLmXbx6pvSMsbWQyrFOb8R
         ljP4u6bdHuWuMouPkU25d6okKB9tvWSJV3BKQElkZ8BAwK5BGfXQlTLRWXaOxgvdpUqc
         MQxzwnr82YG364/8ITGmejn+uAP3t+jTTDaIe0pUmt60E+d22ouNW4TrzWU9xUuCFBOl
         tEjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=30+E7Q1Ff3fv5bN3vjge8KnB00o20EUIV34lHxLtCPk=;
        b=Yn9dsX2YisyuMWXLZiNTWpWmL3lS1Re8KEAuy5eRUf9VgJfl7IcNGR5pos5f6lnPSZ
         SbBajeo8WmAl8wdKMnep7ylgbtFTnhCJqV4QhHdEY/FriKpnCwaPGIWdEqsrmftqeAQ6
         4oJSmIkY8yHLTnQz0Ae6TOUGw5UZl+5kSM4g7RMbPc1FXGemP2eW85QT9YU8jRILy8bw
         t/0j8vHrl5XLDQEIeWn529vHxoj3QCzdk0WGmkO42lmZMyBnvfy/D/0CuWgKOLahZcU1
         4kU2BcNtesGMKALtHQ52FVjMecal2sf476NRx6mkhhpH4zNUWZbe6vXPapTHXsDGDuM/
         Hp/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id j127si110102iof.4.2020.07.31.13.27.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 13:27:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id j187so29955898qke.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 13:27:41 -0700 (PDT)
X-Received: by 2002:a37:e86:: with SMTP id 128mr5583050qko.314.1596227261197;
        Fri, 31 Jul 2020 13:27:41 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t35sm10607976qth.79.2020.07.31.13.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 13:27:40 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/7] x86/boot/compressed: Move .got.plt entries out of the .got section
Date: Fri, 31 Jul 2020 16:27:32 -0400
Message-Id: <20200731202738.2577854-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200731202738.2577854-1-nivedita@alum.mit.edu>
References: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
 <20200731202738.2577854-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

From: Ard Biesheuvel <ardb@kernel.org>

The .got.plt section contains the part of the GOT which is used by PLT
entries, and which gets updated lazily by the dynamic loader when
function calls are dispatched through those PLT entries.

On fully linked binaries such as the kernel proper or the decompressor,
this never happens, and so in practice, the .got.plt section consists
only of the first 3 magic entries that are meant to point at the _DYNAMIC
section and at the fixup routine in the loader. However, since we don't
use a dynamic loader, those entries are never populated or used.

This means that treating those entries like ordinary GOT entries, and
updating their values based on the actual placement of the executable in
memory is completely pointless, and we can just ignore the .got.plt
section entirely, provided that it has no additional entries beyond
the first 3 ones.

So add an assertion in the linker script to ensure that this assumption
holds, and move the contents out of the [_got, _egot) memory range that
is modified by the GOT fixup routines.

While at it, drop the KEEP(), since it has no effect on the contents
of output sections that are created by the linker itself.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200523120021.34996-2-ardb@kernel.org
---
 arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 8f1025d1f681..b17d218ccdf9 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -44,10 +44,13 @@ SECTIONS
 	}
 	.got : {
 		_got = .;
-		KEEP(*(.got.plt))
 		KEEP(*(.got))
 		_egot = .;
 	}
+	.got.plt : {
+		*(.got.plt)
+	}
+
 	.data :	{
 		_data = . ;
 		*(.data)
@@ -77,3 +80,9 @@ SECTIONS
 
 	DISCARDS
 }
+
+#ifdef CONFIG_X86_64
+ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
+#else
+ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
+#endif
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731202738.2577854-2-nivedita%40alum.mit.edu.
