Return-Path: <clang-built-linux+bncBAABBDGD6HZQKGQEL4GLKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBA6193A24
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:22 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id b82sf4101502qkc.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209741; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+tJqgrCLYgTyl1kiLjW6RXKhJO7L9pMWsALmjvArSdeLniWrH83dBpK6KLjz31Wiw
         DR+Vfkj38eJnPGBmKDqv/tsrzggKvu+k1mdZr6RlfRGHX58xkovFhZNN6drdHt/8msit
         B8daKyzX1QZLw7sHU6S3QrzJsIYbeFIEG50TmqzAdNYgOs6hyj9qULVGLGxtJ8PSLyp2
         oDF6OK0Bpi4V0ikcxil2/id73LMAdJIo+SpSdYAlXRC55YkneTTQ3I8i8vP3WvO/xU0X
         JskzHYJGmcTJDNI5LolMAb6TTHXbOG8SQxS3NYJLa3ifH406Kcyg717R2tyrzwKPptAx
         Avrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=PMBywUoTe29e3M0hH0McwclwLqXafq6Ybb+9H2UYjPk=;
        b=Ijgw0ajLlCghJQH7RLgB8bcs5CNyOrvaZ5AUghkYX8Z4aYjc9t9NOnmIF6jqI20mht
         NCUmqFgckzvxhJuO0DofkzsKfyYhcY8bhXgP9GUbD9DNngkerFV9gksVHaLF+5aq6zkr
         zRYovJ9F/ng8jO5uCVlEq9PMe2ibdAP8QeI1SimjBbjkKM9EaT7vrjbmRT+sKtFiujLh
         ntvs7xXJ5EB0yimZtOG3NilSAq08MrQTf4zdv9bwgXQbqvoJ8f4EZWvhyTpVikq2naLW
         yDM3pJKSgKIu+Jyl6snGss70bbksBWtUty+PcmyENF+ZEvyX9M+yfHHWzFW23KUS9W6r
         vEUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OiXXcS8A;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PMBywUoTe29e3M0hH0McwclwLqXafq6Ybb+9H2UYjPk=;
        b=ZyIhrjL9tasZ0XuHTlH3ppud4D2apdp4eFXI5acI8tBHYnMrfAYbQX4A6Yl4UEPyCE
         5T/lZIGsmFXMPabG6iKK0SBfxdUVjNU0xJtx9dQlo6J8vi1/F5xKwDiBnmm5s0XRGTkP
         BISc1H+rNLpVG8cUEQX+2wevFiL2UApNOBN8rmIrQ7STp2RUwI0APEhUR5ftVH9w1+sq
         3v7wgVd26U60ZH3v7Js5lqdAisr9wHbAuLp/07DrwIssOINV0NK1FlNEOgVlDEdGqVuv
         zx9Qgv8pHgq5e8GMGXhxgUBmk70IOHZHsWWhGSiHj1Ez4XtpN1iSdiBj2i2UtBo2daOt
         uh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PMBywUoTe29e3M0hH0McwclwLqXafq6Ybb+9H2UYjPk=;
        b=JkpsOD0jARSw5buLWmvwg1qOIQFe/KpUwgQtKjP8vNokJfW8LqN8/kcvhl6IHbCmBL
         MD5BxT2iqQR0bsJy7eEmvdHH7QgFYjRnrzOqVqkiFWhCHSDVhxp0SXWOxJIS2+CNBvfN
         NyJtUyx7BmIpfOZZQMHfF2KOxZeoYkVq32BnEq9mmGVnEaCVe0Q3KhkZw8xBlb5zxXkq
         MCRBT1stweZqE7MGLEeLKz3Eb7HFVNtXumENDsyfzPz2/L8M4JM95OYKyLj7STbfkYly
         NbqYCcOqOED0v8q+DRsVlFZkG9fh96AIxAD1DojeibK3aQzVG+alz/397jwKcvcq9HP2
         8ZCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2LS/ec+AD4+o1QT6E5jyCc52OIyp/VDtBSpC32E6YG+75RvD4l
	Uir9+RGsuuORP7t1qnrgSmI=
X-Google-Smtp-Source: ADFU+vsVY1lv2slDSZlEBWlhnptAXOG3YuVM/4ZZPP5oiSwzgSxQJseJTauczKNMmxjenCAA/6B/Ag==
X-Received: by 2002:a37:2f85:: with SMTP id v127mr6775223qkh.53.1585209740951;
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9ba6:: with SMTP id o38ls1141188qve.8.gmail; Thu, 26 Mar
 2020 01:02:20 -0700 (PDT)
X-Received: by 2002:ad4:4026:: with SMTP id q6mr6931247qvp.118.1585209740647;
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209740; cv=none;
        d=google.com; s=arc-20160816;
        b=U+3GmRm2EWXLtPNbU3/TEHruhfKxW/YN3T9dUskXPCusaiBuQ2cjbvRJwC0w8C+fjd
         aXrxFqYRuP6Elb0ItNyVFrtNsw9WlybNr74KeR6mRJpoyLNYOqJRnSDlqmkhRmZ4y2Dl
         Y+K3CyZFtFAtOdzAyqOgsITHnfYKv+cU6AEB9TZqo2iY39cItOdYMlTZhlG7CbeBMAkq
         WlSYcWJeFQleftmGyoVjL47G7gU+zA5a3Xd9iyTs+UFyfl3j/ul1Y4ShwmdLHeWTf8n2
         WxxwmDorwGOr5rATqMR+yDi9U2odU1yZlWQqWEOQvQSvcHJt5ZE5Id9WXEDI+d+xVqSG
         dKhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=oOjb9pPYS7LdRFAdDN6Ik8bWPmCh/WjUa0CZHnPToFo=;
        b=AUa104oTl4ZjZtaMwDbrfGDShGR/736VtSPlw/xi6t8oywxuTtIcHmHlI5Y0yl09co
         p14h3IRrA1kuAj+V9dbP9Qr9L7a61YsLrnwIYp8BhaSpre150oWSm5bFmAw5t2psS0fF
         eWLwbxMyWoMMzu4VyNjwYa4CWaVa7hPbtF5fq70Y5Exma71cfOAAA9F27c0xzYWzptMg
         dYqCWfP/k7ODeeO/lkLJO/bErjRoqMewT5lV142QT959WlrMqQn56tPNZARoe1zC4NPt
         AezJYvH1e4bSaIUbmug+dB30CiScxjnzBua1AsMI9Dh90Po3GdkDW/HGYPAuHIxyQ5ZT
         xwhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OiXXcS8A;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id t24si138530qtt.1.2020.03.26.01.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81WpU002183;
	Thu, 26 Mar 2020 17:01:35 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81WpU002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Yuanhan Liu <yuanhan.liu@linux.intel.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/16] lib/raid6/test: fix build on distros whose /bin/sh is not bash
Date: Thu, 26 Mar 2020 17:00:49 +0900
Message-Id: <20200326080104.27286-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=OiXXcS8A;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

You can build a test program to test raid6 library code from user-space,
like this:

  $ cd lib/raid6/test
  $ make

The command in $(shell ...) function is evaluated by /bin/sh by default.
(or, you can specify the shell by passing SHELL=<shell> from command line)

Currently '>&/dev/null' is used to sink both stdout and stderr. Because
this code is bash-ism, it only works when /bin/sh is a symbolic link to
bash (this is the case on RHEL etc.)

This does not work on Ubuntu where /bin/sh is a symbolic link to dash.

I see lots of

  /bin/sh: 1: Syntax error: Bad fd number

and

  warning "your version of binutils lacks ... support"

Replace it with portable '>/dev/null 2>&1'.

Fixes: 4f8c55c5ad49 ("lib/raid6: build proper files on corresponding arch")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
---

Changes in v2: None

 lib/raid6/test/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/raid6/test/Makefile b/lib/raid6/test/Makefile
index 3ab8720aa2f8..b9e6c3648be1 100644
--- a/lib/raid6/test/Makefile
+++ b/lib/raid6/test/Makefile
@@ -35,13 +35,13 @@ endif
 ifeq ($(IS_X86),yes)
         OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
         CFLAGS += $(shell echo "pshufb %xmm0, %xmm0" |		\
-                    gcc -c -x assembler - >&/dev/null &&	\
+                    gcc -c -x assembler - >/dev/null 2>&1 &&	\
                     rm ./-.o && echo -DCONFIG_AS_SSSE3=1)
         CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |	\
-                    gcc -c -x assembler - >&/dev/null &&	\
+                    gcc -c -x assembler - >/dev/null 2>&1 &&	\
                     rm ./-.o && echo -DCONFIG_AS_AVX2=1)
 	CFLAGS += $(shell echo "vpmovm2b %k1, %zmm5" |          \
-		    gcc -c -x assembler - >&/dev/null &&        \
+		    gcc -c -x assembler - >/dev/null 2>&1 &&	\
 		    rm ./-.o && echo -DCONFIG_AS_AVX512=1)
 else ifeq ($(HAS_NEON),yes)
         OBJS   += neon.o neon1.o neon2.o neon4.o neon8.o recov_neon.o recov_neon_inner.o
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-2-masahiroy%40kernel.org.
