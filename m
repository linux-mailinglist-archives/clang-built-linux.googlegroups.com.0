Return-Path: <clang-built-linux+bncBAABBBUOTP2AKGQE6AS36CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB4519CFB5
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Apr 2020 07:17:59 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id w2sf1609596vsf.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 22:17:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585891078; cv=pass;
        d=google.com; s=arc-20160816;
        b=pXfvHpGC76Adp4FYUFu5el03LTqFyOy4SzzYSKrZ7ClB7y4DBm7JGOzT8FzdmZ+FQU
         ttVPnb3R+L10VBXR2ZMjeFwfFIwcLPC6l19uCuqGFcsnIF7bOF5En/9cen4Bga6ejqok
         RYDmjjWLxg2gkyM7KvuGiT39RXFa/OtxUuldh5EvvhKuyZtcVSkLnYv7gOCtUyUE2LFj
         qfhn+4ZoH6uwdB5kqGc+YpW5AtgILL7jfm6vahmN2DqhvjkbJ6z/F9lhEtv2+hIf6Luf
         a3qPF/I2oWa1Dfna4rhMymayA5nEH4gXpWbGLNgwNJn3D6D66wLNgXT1a4BzdZ9Y+yuX
         l6+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=jDEcUDeBdho6W45PJCD7Q2YTpK3qU6TRyLQ6r4HA9gw=;
        b=sE/GrwJBZ1venGTGfMDOUUuTm+RV3IL58I9o9u+W7CHALP53W0r/Ni8LqXm5q0WXDn
         qCUaJ+c/TzR892Wp5IPwtoQbzLH0tZaKhW5iCzcsnJwEhnd2Ggy7ZUrS+hIaLwMiQ00S
         6DIqI/Ix4I4HXnrl22LRO59XkuUY+SnynQL/FTK8425f5PAp0BBo1OAJcZoZKMjl92EX
         Z3UDjN1ALe+Zw4exSj0XiJ6nT2AbMXemnw3ontkrosa/FkGx58JYp59doMJaz9eTwGgG
         StSLDC+sXUquNPtyaO/iqO/LxYNeyUgIP9OPWDmJXDUQjvlCt2sO2RStf5PpvJPqC2+P
         +4mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=b4CW45ox;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jDEcUDeBdho6W45PJCD7Q2YTpK3qU6TRyLQ6r4HA9gw=;
        b=e9qtIZkpI1tZBSmVpkaT1RPPVq+12PzeeLOesa3MP8Qmvc+cvy6JrPGm4+CIdjT/WI
         W7avck2Wb/OtcdxYnQcSIx61fVRVoYeus95G0dxE1YAUxUbUGGkB61gXaIyGwYNe3Dzl
         GwDebmgf7Q18mPawcZx4DRBSbid8DgPEpkGBDxi/i6l2bkp+m3WGob0k67AYKNFnVQVs
         Aqr0sqkbbR4W0eeKBxIzzViaYoLsnW90UnE/Oi0bVF6nqYOKfKys+S5Zy2Dd0+e5rqjD
         498BiH7IT64LIg+fWF4ICUqA50fFjRnWdJ5MsjY+3WZk5gejijGj1hze50xYnH9WzXSs
         mdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jDEcUDeBdho6W45PJCD7Q2YTpK3qU6TRyLQ6r4HA9gw=;
        b=BiAJpG9rYy1rahDm0D5FUJJc41xBraqEDPt7hunktIivZ2D7PZa26c5PYI9BPex+GI
         GT/BoM9b4Kp+x7L5mWR5wVHogF96BQBk7uCCcBMj2qwSE/JqRnGBL38uCHrok7+R2Lly
         +HImX70U9uUuCd5G79CPkTB5E5uoJFJIDk9QlK7Cd8CfLmV4nEFUN3fl5cBGT62O0Bey
         SHghvM4b3OAkF5Efw/tC9JtS8aDThkZIIOtSBFormbTkTtWYcb5l8VW1DjHtq1hbOnXN
         T80XJxRbyZ6VBU3RKnCBPfTCFLDzLxLcAdgSszuFrqiWvV4871WI56Sk5I453O72lYb9
         n7Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYJUOylS/6tplFVL6RbX/ZsFUCMax3C95O/t/WxGAJn7lF+GAY6
	Lb21w0M+nPnW3gvQA1tWVmQ=
X-Google-Smtp-Source: APiQypJFWROl66h7+ycHPrPpvIsi3ntUy4nO1SCf3vSg/xPv+9osBBpdEzWWYP1Cvd6UzP10S0e3Xg==
X-Received: by 2002:ab0:74cd:: with SMTP id f13mr5445421uaq.111.1585891078458;
        Thu, 02 Apr 2020 22:17:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls1068601vsd.3.gmail; Thu, 02
 Apr 2020 22:17:58 -0700 (PDT)
X-Received: by 2002:a67:8806:: with SMTP id k6mr5462650vsd.59.1585891078107;
        Thu, 02 Apr 2020 22:17:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585891078; cv=none;
        d=google.com; s=arc-20160816;
        b=R4yWSsScPukP2Xmco2H62khqVWJmldDPZSdaYcFBwgnc82q2wZdSgtAMBtUavGdZdl
         4bt9tIRZlRgczrGFLHuWE3CWj4vmFodlGpTqluzQh8b065lrMrYqAt22r7XQiVbBb1fH
         WMPrpw0IkPHs4w0NIY6K9KlgRIpLIxmPi50vZuEsfKhYXc2LQyoNIRWVaPlUyLla4UxQ
         QseAjoxVb7AUKsr4PjEClrrHSE/FfxYZ8TvciZEW8przbz6LbDftMKsQmzB38hF88oBi
         vTum/yq+Q0jrK5/h7a9+ATuWGEwVwjge3jYWXuWRjafQOr2EbDB0ZuUWdVuvFtOXPki5
         EqhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=zl/SnHIefZViz5A4+tN74d8D6ngYjxgigdH+W+cYlb0=;
        b=NJ7V0BF1m4zKvpRmNGcCu0FhIb/AWxa1f6PIlaKe8WNjyTaZzalk+v6LTvn9A949cc
         zdLqThDVQ4mij/YSLyXqd3JhNZyrg8zhd7Kjc7kDX4PnpASL8FZ+NVUGwYxNYUM8tsH7
         3znHkWorHCZcBeGzW5eXJQev41M3mEKJQEO90mUMJuYboJor3NDtd8dWDvzV7936lu/N
         Lzl8SKizwapL/PUWHx4ohPpfavfj15vA6Pnk9YZSbS0dxqMrNDKkdjDBi4YhVy4YFwTx
         8O79RCNpZKomMI3d2obyOxhNG31wQJVNeO1FhblBW6STdQzDIPMkGJoFxsMyCqCANxyU
         TeSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=b4CW45ox;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id p7si273376vsf.1.2020.04.02.22.17.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 22:17:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 0335HC86000605;
	Fri, 3 Apr 2020 14:17:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 0335HC86000605
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
Date: Fri,  3 Apr 2020 14:17:09 +0900
Message-Id: <20200403051709.22407-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=b4CW45ox;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

As Documentation/kbuild/llvm.rst implies, building the kernel with a
full set of LLVM tools gets very verbose and unwieldy.

Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
GCC and Binutils. You can pass LLVM=1 from the command line or as an
environment variable. Then, Kbuild will use LLVM toolchains in your
PATH environment.

Please note LLVM=1 does not turn on the LLVM integrated assembler.
You need to explicitly pass AS=clang to use it. When the upstream
kernel is ready for the integrated assembler, I think we can make
it default.

We discussed what we need, and we agreed to go with a simple boolean
switch (https://lkml.org/lkml/2020/3/28/494).

Some items in the discussion:

- LLVM_DIR

  When multiple versions of LLVM are installed, I just thought supporting
  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.

  CC      = $(LLVM_DIR)clang
  LD      = $(LLVM_DIR)ld.lld
    ...

  However, we can handle this by modifying PATH. So, we decided to not do
  this.

- LLVM_SUFFIX

  Some distributions (e.g. Debian) package specific versions of LLVM with
  naming conventions that use the version as a suffix.

  CC      = clang$(LLVM_SUFFIX)
  LD      = ld.lld(LLVM_SUFFIX)
    ...

  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
  but the suffixed versions in /usr/bin/ are symlinks to binaries in
  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.

- HOSTCC, HOSTCXX, etc.

  We can switch the host compilers in the same way:

  ifneq ($(LLVM),)
  HOSTCC       = clang
  HOSTCXX      = clang++
  else
  HOSTCC       = gcc
  HOSTCXX      = g++
  endif

  This may the right thing to do, but I could not make up my mind.
  Because we do not frequently switch the host compiler, a counter
  solution I had in my mind was to leave it to the default of the
  system.

  HOSTCC       = cc
  HOSTCXX      = c++

  Many distributions support update-alternatives to switch the default
  to GCC, Clang, or whatever, but reviewers were opposed to this
  approach. So, this commit does not touch the host tools.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Documentation/kbuild/kbuild.rst |  5 +++++
 Documentation/kbuild/llvm.rst   |  5 +++++
 Makefile                        | 20 ++++++++++++++++----
 3 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
index 510f38d7e78a..2d1fc03d346e 100644
--- a/Documentation/kbuild/kbuild.rst
+++ b/Documentation/kbuild/kbuild.rst
@@ -262,3 +262,8 @@ KBUILD_BUILD_USER, KBUILD_BUILD_HOST
 These two variables allow to override the user@host string displayed during
 boot and in /proc/version. The default value is the output of the commands
 whoami and host, respectively.
+
+LLVM
+----
+If this variable is set to 1, Kbuild will use Clang and LLVM utilities instead
+of GCC and GNU binutils to build the kernel.
diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index d6c79eb4e23e..4602369f6a4f 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -55,6 +55,11 @@ additional parameters to `make`.
 	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
 	  HOSTLD=ld.lld
 
+You can use a single switch `LLVM=1` to use LLVM utilities by default (except
+for building host programs).
+
+	make LLVM=1 HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
+
 Getting Help
 ------------
 
diff --git a/Makefile b/Makefile
index c91342953d9e..6db89ecdd942 100644
--- a/Makefile
+++ b/Makefile
@@ -409,16 +409,28 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
 # Make variables (CC, etc...)
-LD		= $(CROSS_COMPILE)ld
-CC		= $(CROSS_COMPILE)gcc
 CPP		= $(CC) -E
+ifneq ($(LLVM),)
+CC		= clang
+LD		= ld.lld
+AR		= llvm-ar
+NM		= llvm-nm
+OBJCOPY		= llvm-objcopy
+OBJDUMP		= llvm-objdump
+READELF		= llvm-readelf
+OBJSIZE		= llvm-size
+STRIP		= llvm-strip
+else
+CC		= $(CROSS_COMPILE)gcc
+LD		= $(CROSS_COMPILE)ld
 AR		= $(CROSS_COMPILE)ar
 NM		= $(CROSS_COMPILE)nm
-STRIP		= $(CROSS_COMPILE)strip
 OBJCOPY		= $(CROSS_COMPILE)objcopy
 OBJDUMP		= $(CROSS_COMPILE)objdump
-OBJSIZE		= $(CROSS_COMPILE)size
 READELF		= $(CROSS_COMPILE)readelf
+OBJSIZE		= $(CROSS_COMPILE)size
+STRIP		= $(CROSS_COMPILE)strip
+endif
 PAHOLE		= pahole
 LEX		= flex
 YACC		= bison
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403051709.22407-1-masahiroy%40kernel.org.
