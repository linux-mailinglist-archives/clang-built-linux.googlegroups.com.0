Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVWVUL2QKGQEDNH42DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D341BCF9B
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:14:47 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id lt8sf2757668pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 15:14:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588112086; cv=pass;
        d=google.com; s=arc-20160816;
        b=WTTCzLAPfsHrXHul6pCWTVaPnxWaiFSqLgRjDYLkEbHYPAEleQ3tGtyUAzAiJZsz3m
         ih2JvgQFSupr7knK0vfO7KCsjk7ynYQA0wva7xBmQM1jQViXmBmaGoSICNnAdL+izjkd
         J5Ki5BFYuzCAyfwpgkpPfiVwKRT5A+e3XSrmYeeKYRIt1tjtml7syOja2aIuGJVFfPIe
         txs8LkWXjDkgmt0Tg1NnkRaoLpDFaYhHIZ8Z/x8VZHuoA8xFGj7y5anMZ3qnpKOS+BND
         eoEMbpaUZu1YT95QnLrcAullwtz4oQiHAQsMBi/khecvYa14sKzJ37OwiefoLHGkAbuT
         jxUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=IjgrfAOH1zi0TnSSoq4l6vpniOYxnMgIy8nGyS3ZMew=;
        b=SgXyG6oCvXanv8kR0rfiEHicQaScr2zuT2bFQJWcnJi6S1ZJyrHJVMMUR7HOUeTYah
         KqT1dCs8Ih+UsZoJuBwoTmjzlGVMXFqPQ4neE+mqYl7NZrnO85h67eH7O6w97iaLh2Uw
         aQ0v9j4t21lGDuIaYlU4a/uZuH7q9OcG5tV+TtrhdlWweNOuaIpYMyZx7tdHQ9j9Wwky
         hPyG1seNmAy/LxYctlqLEZrPE0L+4lzKGulgL42cXdIavWH75fJlxWX7HwYaNGK0fZ09
         Kv15X/ojFIjl/rPW1accY/286LyQPKRVR9420aVxqka8BUWE0pLP/CkL+JpcvvrOecNw
         VRVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iti+Hequ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IjgrfAOH1zi0TnSSoq4l6vpniOYxnMgIy8nGyS3ZMew=;
        b=NbRRDWDt8OcC46hFQPYinBmP4luzo884A2HGaaJd68PKNjsr+0pAu487EfqYINsodg
         nTvbEHjBaSb/kyhWPTt3YgWG8S8s3Ay+lDqzn/3lBuPJuv6M5DaYFCTr6lQRB6Zt5Ryf
         Ca/YJIYhHaKGoopdPK3GQV0g6zCwu2qtcb2kPehoXf93WRA/LAzbC7wZOdFc+2yg2cjL
         +CQg5n809vsw1cRapv1aG9BQgtJjBarFE5yZgiIjvIIs81i0Zr6iQqDX7CiVzuLU3tXI
         iLybUJkw6cjCWHmjL4HcRWlQaQ8Sr58mvi5CBUQ+gnZ5+05qxAmtbzis5B3EXZp0s/p9
         yEiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IjgrfAOH1zi0TnSSoq4l6vpniOYxnMgIy8nGyS3ZMew=;
        b=vE32okTWjg5cvIXM2ch9ii30KAa5+zONCU+7vd69Q9MMwJz2w/R9YYucriX0NSZhZo
         JhITCA3n/Yye0v2pkk3YG6v2ljzOLJOohXwtF7UMjNlqJVU7PYwKUBC/HaGykggCUNek
         Xd+ny01shooeNz9qdnaSSImvhEjFIuvlCx3U/LhG4k/izcRCgNTm1E7c0RA7DdHwLhiI
         dc7oVgZkIfX2firKWIOhiI3OMTlbORjnjqy5/91sMeJ7vHp7X6zIOIElxXmfxw81ShXS
         DHjNyoWEgG/HR7kDyPEvkL4K1NyAvJnf2aXTFTD7iNnD96haRawGIkGFybf+tonEhU0d
         dGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IjgrfAOH1zi0TnSSoq4l6vpniOYxnMgIy8nGyS3ZMew=;
        b=HcHEMWeNyeeY7Ianilwz/ugmKtCoekiW0jfOQ1ScfoQg5PQRxgYIBTExwjbdHU31AN
         1Cc2dYSD1I5MQdQ6qLoGW2c9ofDArtLvxKk1CT3gXmSBDZgskjJe1HuLNABpbGosWdUS
         g637p029yINhZPX+Gu7VEgw1ln3KTVal95GgTuz8smUelTq/6Mc1GahyQ/Fh67Ez/jv1
         TnE6DdwoKcH03FbEixun8oiBY4b4eUrtSrD6LUVJsKhpje4Kd43l3SWIhznh+oUqoelS
         TAfufW1Rxz0x1HEABfoaGXJIXm6ae45au71e4S4Vnj6vSP03h6CeEceLkFl/1g6xPj0h
         OuYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubEekFcs+/cPGVDP836/SulL/KzX11/806RYP6BEloPGDD2B2xi
	CgIYk02t2osZvJr/w7q0Wug=
X-Google-Smtp-Source: APiQypKjWQmvgwTeAe8D55XlJzOUxUg/BSN9s9xD36EDobWF1WfJ8lre3eMib26jQ0mCCWrJf9e1tQ==
X-Received: by 2002:a17:902:8d8d:: with SMTP id v13mr30556653plo.67.1588112086152;
        Tue, 28 Apr 2020 15:14:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7b5c:: with SMTP id k28ls19158109pgn.4.gmail; Tue, 28
 Apr 2020 15:14:45 -0700 (PDT)
X-Received: by 2002:aa7:8f26:: with SMTP id y6mr32697584pfr.36.1588112085756;
        Tue, 28 Apr 2020 15:14:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588112085; cv=none;
        d=google.com; s=arc-20160816;
        b=qhPF7vAVEmK3n7XIi/LkjPlMlFtYeA+fi9wA3JHG/zJ87Qn+P9LjgkLWTe6utLHupQ
         8o4i1fYmGMW8HlD065ZqTM9bGUYzXVs2W7b+v9KTS9UHY3VutP0ztFkIOC6saNkEjO7F
         /N0Ngjmn000r54ZBNO15KJgrYo6oN/FM6H7k0nsKglp3wXqvMvMeXo1RjmhnV1u+NE7s
         TwACVzzf3s2tcpn+KyMFJBTg0GbcTVYR08TYHeZXJITgziGxrNDwP2uIve1XL/3aLhxP
         xncoXnuHLK/XElHnwJ7V9g608zbLF5TvidbSCXHoikAzKJ8xL8+A3ZcR93oxMjFylEMp
         +Hrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=D5XPjNeCefGZdrfYepQszWv1EoAyH1SJYjMY9egLiRQ=;
        b=vFl3iJ7UYAiwKydLxc+G4rKYstb4bOQeU3VlTeMTQCV5LBDiieiSlHCUWJsjZLOGQn
         WxiNCGLjvVcCnjV4FbFQfH700y1GwaweMz/A7D6sCsWX8SxESvCG3El1kvnRaxUpe3ff
         jpJP23m1MsLlsC1ymUBN2v6ItE2oF8O9R4rRtOYZWUQ/XM2Rg8bD9fsRvTKF4+GSfTv3
         Wo9omgVvVHvNGhc0l7bI1QhRq9ipTxyzKaHkX9rJgZAmQBQB8Iujc6MaJOUdAhdnrCk+
         EUQLiEcdxL/9UyMK8fWpFw60ReKFP1iKY1qqcmZIqQzUimHdTEQGC2gkH1duRyrxVnON
         aJ+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Iti+Hequ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id mm20si308764pjb.3.2020.04.28.15.14.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 15:14:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id m13so35588249otf.6
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 15:14:45 -0700 (PDT)
X-Received: by 2002:a05:6830:1ac6:: with SMTP id r6mr1353744otc.311.1588112085030;
        Tue, 28 Apr 2020 15:14:45 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 186sm5267476ooi.30.2020.04.28.15.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 15:14:44 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v4 3/5] MIPS: Unconditionally specify '-EB' or '-EL'
Date: Tue, 28 Apr 2020 15:14:17 -0700
Message-Id: <20200428221419.2530697-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200428221419.2530697-1-natechancellor@gmail.com>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Iti+Hequ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This was all done to work around a GCC bug that has been fixed after
4.2. The kernel requires GCC 4.6 or newer so remove all of these hacks
and just use the traditional flags.

 $ mips64-linux-gcc --version | head -n1
 mips64-linux-gcc (GCC) 4.6.3

 $ mips64-linux-gcc -EB -dM -E -C -x c /dev/null | grep MIPSE
 #define MIPSEB 1
 #define __MIPSEB__ 1
 #define _MIPSEB 1
 #define __MIPSEB 1

 $ mips64-linux-gcc -EL -dM -E -C -x c /dev/null | grep MIPSE
 #define __MIPSEL__ 1
 #define MIPSEL 1
 #define _MIPSEL 1
 #define __MIPSEL 1

This is necessary when converting the MIPS VDSO to use $(LD) instead of
$(CC) to link because the OUTPUT_FORMAT is defaulted to little endian
and only flips to big endian when '-EB' is set on the command line.
There is no issue currently because the compiler explicitly passes
'-EB' or '-EL' to the linker regardless of whether or not it was
provided by the user. Passing '-v' to VDSO_LDFLAGS shows:

<gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/collect2 ... -EB ...

even though '-EB' is nowhere to be found in KBUILD_CFLAGS. The VDSO
Makefile already supports getting '-EB' or '-EL' from KBUILD_CFLAGS
through a filter directive but '-EB' or '-EL' is not always present.

If we do not do this, we will see the following error when compiling
for big endian:

$ make -j$(nproc) ARCH=mips CROSS_COMPILE=mips64-linux- \
  64r2el_defconfig arch/mips/vdso/
...
mips64-linux-ld: arch/mips/vdso/elf.o: compiled for a big endian system
and target is little endian
mips64-linux-ld: arch/mips/vdso/elf.o: endianness incompatible with that
of the selected emulation
mips64-linux-ld: failed to merge target specific data of file
arch/mips/vdso/elf.o
...

Remove this legacy hack and just use '-EB' and '-EL' unconditionally.

Reported-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v3 -> v4:

* New patch.

 arch/mips/Makefile | 25 -------------------------
 1 file changed, 25 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index e1c44aed81565..301efb90b51ed 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -116,33 +116,8 @@ endif
 
 cflags-y += -ffreestanding
 
-#
-# We explicitly add the endianness specifier if needed, this allows
-# to compile kernels with a toolchain for the other endianness. We
-# carefully avoid to add it redundantly because gcc 3.3/3.4 complains
-# when fed the toolchain default!
-#
-# Certain gcc versions up to gcc 4.1.1 (probably 4.2-subversion as of
-# 2006-10-10 don't properly change the predefined symbols if -EB / -EL
-# are used, so we kludge that here.  A bug has been filed at
-# http://gcc.gnu.org/bugzilla/show_bug.cgi?id=29413.
-#
-# clang doesn't suffer from these issues and our checks against -dumpmachine
-# don't work so well when cross compiling, since without providing --target
-# clang's output will be based upon the build machine. So for clang we simply
-# unconditionally specify -EB or -EL as appropriate.
-#
-ifdef CONFIG_CC_IS_CLANG
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= -EB
 cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -EL
-else
-undef-all += -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__
-undef-all += -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__
-predef-be += -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__
-predef-le += -DMIPSEL -D_MIPSEL -D__MIPSEL -D__MIPSEL__
-cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB $(undef-all) $(predef-be))
-cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL $(undef-all) $(predef-le))
-endif
 
 cflags-$(CONFIG_SB1XXX_CORELIS)	+= $(call cc-option,-mno-sched-prolog) \
 				   -fno-omit-frame-pointer
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428221419.2530697-4-natechancellor%40gmail.com.
