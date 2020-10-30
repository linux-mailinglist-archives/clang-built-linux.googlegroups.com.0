Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXFQ576AKGQEOYAPXOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id A59C92A00D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 10:09:49 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id x134sf1549993vkd.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 02:09:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604048988; cv=pass;
        d=google.com; s=arc-20160816;
        b=BKReQ3htDp0WFA40E/+fRa1zBWv1DUq6sTXqTfmnQeRHj87TSrMljD1C7vf1Mf4fwt
         5+T5TU1s+7RWuyVlf+Tue3cqsXeosNjSQBR2OZqHWRlklqLivgUVTZKgpi3udxgxe7wW
         uzTC/8jGs5y3FaRRmvl0VpJmy557yWuMHFH5F6m9zJXkmSqu63fz/q76NHZFPx8USLwA
         f6GphZK/YvnBtfPlebqHbIRr+gtvR032eWS2uEFaNcCmOkuf5SUef8DLYWjQJSdI3CVH
         9K1Qc7wWjOcWkNEHifz3XVbexXW/8e+u6yM45vc3eL3DRaUZSjf5vcb27WZ3XFN8Dnzf
         Tc+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vcGVh1pLskznJBUD0rFXsO64pHnx8E1jSB21zu9ifbM=;
        b=GzTqvkl5rrO9W1Z8aXKJPjj5P9vZJjJzcbaDkfWUmZ39DR0jeMtk+nbdYI4IcIKTa9
         kLHlcfAw3DOViivskW7hWl9PuSo0q7W8XN3r2Wt2YenJFCpwuknq0Hi/itNHnGn7PM/D
         5mCOcCO+OW9Ik3a3g2Vn+Y+kueN0kHdnIfhnrI+d/4HkCnq9w5IDvJknaSGSuUEZSPsc
         J9cVu7kJ09/NrpT1Hi3wkXTl+JCRg0qwtH8qFifCYvfiepQ+Qzlac4QAMLryL46RsMap
         qawJiXIOpBFTTy/E+YCpCVDHn+84AKugHvizprCgD7g5OJsozYwFcN0EIe2pK3hAxOGt
         iTVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nP4akuGm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vcGVh1pLskznJBUD0rFXsO64pHnx8E1jSB21zu9ifbM=;
        b=oxvl9f6CqWQCIq3AjmwWAop0EeYwlklnMz4LJq/Ubg/O/b4hG2nHuxWmiQRzc5uzs6
         +Ovh7Bf3ZXI42rQGOlThH2a4w9s5yjEHdcu5z7vWYmYSYb4i5ie85fGjN28QEBaBjng6
         QrP0V7PdLU22nS24F63RYB7ZdQsOUhrx7Xv1a47zde0OdNNB+0zeBoPEPr+oJKMXeoLb
         o13kJf1ZUZK6Me4r5MqxCd7IsiSb6sHVFo9vTeu+lj9HWJFb3Gjjni7TS4A6ofej7e5A
         40LYoMxFcnuTQHHyY0EzV92N4uRRs7v8FMnDjF7+O+tYiN3wHT0IZ/UqlZUzMPF4TaN+
         +COQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vcGVh1pLskznJBUD0rFXsO64pHnx8E1jSB21zu9ifbM=;
        b=PIxDME620lXITXynlqF3tvM+Kzwqrj/w181VTOgwWs2WjqubLr9/8LRwIRHh5mWAi1
         GohLWWcKo/Zwdfk8N5E90vJfq63d5lZZHyONUXj2VT1x9mQtTaVRgg6WRLR+vF5Hz+3z
         urwAb7z3vNKQQVk39dXsKPEwoemj9bzXTuJDWVvmB7LF1eoD+f39AmXBLOL7qC7oREmg
         hKzlZB1iXirzi3Gq+AWkneGSdaVSd/lHSlrt/4WV1BtzqDsPgdSN5DQumVvqckhdLNBm
         9mHi8c2IU/44pIaEevW6YsqT4Bckc+NgW/hL9aGm/LRLt8cDmhpmp+qWqdmkMsf+FSuw
         msjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vcGVh1pLskznJBUD0rFXsO64pHnx8E1jSB21zu9ifbM=;
        b=Y5y5GvpHlvSRnavskRY6T96rItdTtNbLOlvCmnJkmrUSU0V+rGYqbZbjAYuGM5MswM
         kqw8B4xRUmh8EVmiVAQgVUPjih86RTbZUI4WfDKyTNzr8k9NrBtH6zsbRwZyBeHFQezb
         rM0oRXCg2Poe6WWwaks/C8UyprMv36yPQS6kYNVI857mFu+wixOGksuAdnL1CBsgXRYz
         604/O9VyHDS4uyBFBcJhYhcwJSXE4NZhnvm1Pol7Xkda05fBMTXDCXjrO0KhoxaZBLJ+
         dnKcpU64QSxRS9vqo1vNdKuWHq0ZEW3wwPOmlw7dsv+1cAceq4cM15L7aTgLQa/m5RkK
         Xm/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KBcFLhI4n6eckXCzealEPALOqmPEa39B8MPk5VmhHzaBNl0Le
	iV8TfwvEEY0WCKeP+VBo0vg=
X-Google-Smtp-Source: ABdhPJykY8rcFAZhoOKSPJTUNkwwtHELa0Ug/pZWRc4McahsU87sl7tVV6ciSxTzfUX8UHDYNX06GQ==
X-Received: by 2002:a1f:38d2:: with SMTP id f201mr6084144vka.17.1604048988748;
        Fri, 30 Oct 2020 02:09:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:24d7:: with SMTP id k23ls425267uan.5.gmail; Fri, 30 Oct
 2020 02:09:48 -0700 (PDT)
X-Received: by 2002:a9f:37a8:: with SMTP id q37mr518152uaq.102.1604048988270;
        Fri, 30 Oct 2020 02:09:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604048988; cv=none;
        d=google.com; s=arc-20160816;
        b=c2IJ12WRr99krdBKQ5IsTXJub34ECrC9tTluV0KEY6/H3xDav7O30Lir7zSrFgALho
         xgNvFWTn3ZEag1g06FBcL1BAYuq5QRga3HSF2DScfWz9NpL1wKMdtvv+7xTq1sGuwIg5
         aQQdVsl8XcO+E936xNKZo+esjyXT6tlP+ht4plBRKcYZ6Ke3WcCpYVEFifFkQEtgwPi4
         L54JuuLrG6M2nSwFBj/ksG+Srn4YJlBooL29/CbFgOz/zLFnvyaVp2nCxPkGqe+1Nyuc
         N63od6+fX7a1UR9CJ+AJjrSRkfNQrvFBq9IMtvQaTVALsCfE5wB8w+won3fWIKQibQPR
         oYWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RPHdRVjaOHzwGl9kP1HFBqGh6vFVZBs7d9edYGnkNbM=;
        b=ScKBpiqzLTd/3RweBYkIG45lHcAGmxqReWNv+excQhFjBneagQq0qJbBGigeUi23Qb
         BA4Ix4eQl40mputElOrFZXRp6q4lJOCkTqKVN3DVvFMg2IREZnzfwvzDwfH9pUCcF+0Q
         gaPqE/yYFQPNt52jVlJYnM9K6ypmrjBjKLxfNwJabEKXOaDkkjWuoPvL94cQMCO2P6q1
         I8n8ji34Rgj6UJ8l6+oGoMq7wr/aBRjSjdStinYhN99ixZh4ws9RIo5bEQt91eOAXoXR
         pP65iQT3RIIu4fOlZJV6uw6bVSb6/ECoXt7Y+G1ZpahKKPAXkeg8M6HsYfxfUvUqDhep
         X7vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nP4akuGm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id s199si236922vkd.0.2020.10.30.02.09.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 02:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id k6so5891712ilq.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 02:09:48 -0700 (PDT)
X-Received: by 2002:a92:cecf:: with SMTP id z15mr1090371ilq.214.1604048987731;
        Fri, 30 Oct 2020 02:09:47 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id m66sm6125201ill.69.2020.10.30.02.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 02:09:47 -0700 (PDT)
Date: Fri, 30 Oct 2020 02:09:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Abbott Liu <liuwenliang@huawei.com>,
	Russell King <linux@armlinux.org.uk>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
Message-ID: <20201030090945.GA3635064@ubuntu-m3-large-x86>
References: <20201030002900.GA2248731@ubuntu-m3-large-x86>
 <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86>
 <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
 <20201030075655.GA1848109@ubuntu-m3-large-x86>
 <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
 <20201030080438.GA1849056@ubuntu-m3-large-x86>
 <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
 <20201030084519.GA3748061@ubuntu-m3-large-x86>
 <CAK8P3a1Ckn5E0Ce+0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1Ckn5E0Ce+0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nP4akuGm;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Oct 30, 2020 at 09:51:27AM +0100, Arnd Bergmann wrote:
> On Fri, Oct 30, 2020 at 9:45 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > On Fri, Oct 30, 2020 at 09:10:56AM +0100, Ard Biesheuvel wrote:
> > 4043            futex_hashsize = 1UL << futex_shift;
> > (gdb)
> > 4045            futex_detect_cmpxchg();
> > (gdb)
> 
> I can't explain it, but I'd point out that futex_detect_cmpxchg() has caused
> problems in the past, with multiple patches for it proposed in the past
> and none of them merged. One of the patches I had sent for it was:
> 
> commit 8232a8ffc332fa6a50296a51c4d85200a747256c
> Author: Arnd Bergmann <arnd@arndb.de>
> Date:   Mon Mar 4 17:33:00 2019 +0100
> 
>     [SUBMITTED 20190307] futex: mark futex_detect_cmpxchg() as 'noinline'
> 
>     On 32-bit ARM, I got a link failure in futex_init() when building
>     with clang in some random configurations:
> 
>     kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit:
> R_ARM_JUMP24 against `.init.text'
> 
>     As far as I can tell, the problem is that a branch is over 16MB
>     apart in those configurations, but only if it branches back to
>     the init text.
> 
>     Marking the futex_detect_cmpxchg() function as noinline and
>     not __init avoids the problem for me.
> 
>     Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> diff --git a/kernel/futex.c b/kernel/futex.c
> index e646661f6282..6fbbed45f51b 100644
> --- a/kernel/futex.c
> +++ b/kernel/futex.c
> @@ -4061,7 +4061,7 @@ SYSCALL_DEFINE6(futex_time32, u32 __user *,
> uaddr, int, op, u32, val,
>  }
>  #endif /* CONFIG_COMPAT_32BIT_TIME */
> 
> -static void __init futex_detect_cmpxchg(void)
> +static noinline void futex_detect_cmpxchg(void)
>  {
>  #ifndef CONFIG_HAVE_FUTEX_CMPXCHG
>         u32 curval;
> 
> I forgot what the problem was, but you might try that patch, or find
> the previous discussions in the archive.
> 
>        Arnd

As it turns out, that is the patch that fixes the ld.bfd issue that I
mentioned earlier in this thread and it fixes this issue as well.

To summarize, with the below diff, I can successfully boot
multi_v7_defconfig + CONFIG_KASAN=y when LLVM=1 is used (and I see KASAN
get initialized properly).

Cheers,
Nathan

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4d76eab2b22d..3c0a64cefe52 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -10,7 +10,7 @@
 #
 # Copyright (C) 1995-2001 by Russell King
 
-LDFLAGS_vmlinux	:= --no-undefined -X --pic-veneer
+LDFLAGS_vmlinux	:= --no-undefined -X --pic-veneer -z norelro
 ifeq ($(CONFIG_CPU_ENDIAN_BE8),y)
 LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
diff --git a/kernel/futex.c b/kernel/futex.c
index be68ac0d49ad..226bb20d175f 100644
--- a/kernel/futex.c
+++ b/kernel/futex.c
@@ -4004,7 +4004,7 @@ SYSCALL_DEFINE6(futex_time32, u32 __user *, uaddr, int, op, u32, val,
 }
 #endif /* CONFIG_COMPAT_32BIT_TIME */
 
-static void __init futex_detect_cmpxchg(void)
+static noinline void futex_detect_cmpxchg(void)
 {
 #ifndef CONFIG_HAVE_FUTEX_CMPXCHG
 	u32 curval;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201030090945.GA3635064%40ubuntu-m3-large-x86.
