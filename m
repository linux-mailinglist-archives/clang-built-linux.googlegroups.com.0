Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCNRU76QKGQESNZD5YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id A60012AC991
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 01:02:18 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id g14sf7854642pfb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 16:02:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604966537; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZRHTpkD5Nxb1LfgOMctLQh5Muaj/DaR1rdwjQ2Xh+KAoWN8Tl2O5jUt6dmVo2nFREN
         t3+E1fg6S/ftF29t9IJ0GdL/VibOCd4INi2vZm99+QaoxWeNOCEDa9J17zakTy+xvdoi
         W+eL4q6osl9NuiT8Cwr/bAyV5rh6jsoEbc143EJYZ78DXQOZI7otttlXau2xMcWXn8n4
         bQaQH+7FiYOqLCTjqgDEzoaygFdY88LDiTwlDhzYWoHoUYUBeotNo1ecBs944uRFLBVt
         ++m38cd1S/kIfLGBEbCPp8J4rYFA5+R1hK43eLbSQiegKf+Ftadazs1w9sRFjXFAfZKz
         Wg/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=Q2XO+KaZgVvTj5LG0vbjOLOYf/HQU5LpkuOBXHdoGMk=;
        b=lK0OE1CmXd6YrSt0KJ52By/XnaKpq9fNAfwzGa2sXm8WqIxOnCCKkyoGuECRrwBKyK
         +vSkzjmUCWHc65J3L0mTC2o7/TtA0ztV2rZHH2HxCW4yXunCsBuQVjFibgGELXcszG+x
         CoVmpxFHk7ZRAAQOV1+lqP75I4+kygwWvf2KYUwJGqy03A3ivsUqeVf+h33JJ07g86x2
         heQV0S+mC8Y9dYCXnewKOo50SjFnqErQa028BnMvyehO4VB3hmLA1I+oHwJI8eDCZWe1
         GkQUt59e9qT97pbs46eO2q5mP336bTZIj4Aw+YcH6Lyo55urhD5jz66koTZo13LWHZ2F
         1nzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b4IyAW8r;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Q2XO+KaZgVvTj5LG0vbjOLOYf/HQU5LpkuOBXHdoGMk=;
        b=BqTQtoJ9wr4CuVx+hLEvjAwTW01Jg4R4CKd+AcFgas91I6pbopS3xt2bjFPxtisGN8
         2q5stYLoZvzDQHtFDIgE1EUamfHv72M9wso7v2qslaxon5JQ6nd2Fioote3Fk6kdmNHI
         YqsrJvj8KqCH0U18v3KUk8tWOH8/gAhHzirenObxUd+KSOHp3i954qUNrOW3Iwb/vjp9
         XLDy8KJA7763oM4Ehe00D0DIp1TScp61XsOaSdPJOuVHZQE9wHPduYY6IU7IDDyn6J2c
         zHd/XOxTz9+AkCOydHJzjc7kdie7Jv1z/9CFjTPW8EMzH4QCytL0dTTi7mau+aeCwI6i
         WmIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q2XO+KaZgVvTj5LG0vbjOLOYf/HQU5LpkuOBXHdoGMk=;
        b=HJygFA+s4otZv4029FYuRFhGRlBSPjCUi6JZxQifkGXBSaPuFhBlGY5chpWyEZ5HwL
         zHxS0FA6sF6if5CT26RuP07+Y85ig7Ec7lZIff4m4XbKE9RCEYeD4NCrdtbmhdy1rkL+
         GkauC9M4181juf/6U159+Tdnp+cpdSOup7B5X+GHf1z2n2+YQ6WtMuFhoi7YU1eRgEb5
         plcZlny8BiEmFkV4pLx3ikOMZhiARq602zILkD2jULGBJ594MnxcJY3tGIoJJ2yGLkFJ
         Z/k8m08bXJcJ6txChx0LqdqtNbwYc4CKsmu5qqsYGmPZFo7WhpmXbPopPTWtIPo5j22Q
         kMiQ==
X-Gm-Message-State: AOAM531QPDMqJOpbcPHucOIK3Gmvi7XSmMjkvrroQyFcgbhly4jpgw2z
	gwW5a3yWrBb4OfwBMn4bEBw=
X-Google-Smtp-Source: ABdhPJzErcdTkBovrJb42rwx+D9POnwzRfg9M6IqIcXnkHPBmzY8KfpwjEJsNbp7BW1iUwrX1WFIDg==
X-Received: by 2002:a17:902:bcc6:b029:d4:db82:4439 with SMTP id o6-20020a170902bcc6b02900d4db824439mr14297477pls.63.1604966537381;
        Mon, 09 Nov 2020 16:02:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b20f:: with SMTP id t15ls4376887plr.3.gmail; Mon, 09
 Nov 2020 16:02:16 -0800 (PST)
X-Received: by 2002:a17:90b:3884:: with SMTP id mu4mr1834550pjb.157.1604966536779;
        Mon, 09 Nov 2020 16:02:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604966536; cv=none;
        d=google.com; s=arc-20160816;
        b=nzFsBo0ORcIrWzYm2MFB/8cU+1XCfqzYuFOkaVLLLxsDxnYMSHdNrF6ww6bjDYYzyY
         VLOPRPKRg0GSCS7mlGYM8fcLVkVtYkkXKJZlCq1ZKwy8np3sf8n5zaf4g/cGnXAvHk/a
         izChEFjWe1rjSAOdxY4s7Z/SFZzt+ChxcpViUK8Vrw7CB6m5REUe3fleT7QlY7ij1W/3
         VMItumwl3xovrQXzEULvfCwtjMMKbF0ZnjTXKj6hGwqUOmnAGGxeF09bDC2/6UtFqC+V
         qUtElN5QBsgJUNiLHSRAdOqlPEdR1bWfX0Am4b/MBxfSOPwhJduwov18NjPdhszMHvIT
         9OWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=u0FSs3fBeshM3kC9pCHM23mzDbIHjb7XV+CpNRwdy0Q=;
        b=kKpiTst+H4nrh8C+dvII5mUUoOQgXlyPSrEA+g8+OQXTNB+BXfRV3MBLj10+jnknfO
         DZVYubDbvuFXIcxaaHHKa0Xr+xbKKVFxgzaT2aGoKtssFO6ySxRkvOcxtQp7CdmGBy4C
         stnxrYqge/+smQoioTlO8kwSToz3Vw0c7Zpjlt7JkdZTgFQOzNb98CJ6dXD1BxqVjnNK
         MP9psxkTbSTfgFaU5KQMO2kWQUFjfMnvgjiTpdldNEt6fFaF7NvyC/MaM7fo2o3LdEhW
         mnou+PmgRbE/n3dMC9kqgZIHKPMuhMCchWl4paIUJ18x0ZQalfIsHQZXl8aAdDvCmrH0
         c/dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b4IyAW8r;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id j63si785482pfd.1.2020.11.09.16.02.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 16:02:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id x15so4722826pll.2
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 16:02:16 -0800 (PST)
X-Received: by 2002:a17:902:760c:b029:d6:efa5:4cdd with SMTP id
 k12-20020a170902760cb02900d6efa54cddmr14236357pll.56.1604966536345; Mon, 09
 Nov 2020 16:02:16 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 16:02:05 -0800
Message-ID: <CAKwvOdndZRv+_FaNFUBtT=zEPG3mh2cb9vfRFCsU5Dus4zzcEw@mail.gmail.com>
Subject: LLVM=1 LLVM_IAS=1 ARCH=arm (32b) state of the union
To: Jian Cai <jiancai@google.com>
Cc: Luis Lozano <llozano@google.com>, Stephen Hines <srhines@google.com>, 
	Alistair Delva <adelva@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kristof Beyls <Kristof.Beyls@arm.com>, Peter Smith <Peter.Smith@arm.com>, 
	Doug Anderson <dianders@google.com>, Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Mark Brown <broonie@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b4IyAW8r;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hey Jian,
I was able to get 32b ARM allyesconfig kernel to assemble with Clang's
integrated assembler (IAS).  Here's the list of bugs I hit:

1. LLD doesn't support BE. Patch exists, not immediately related to
LLVM_IAS=1 but hurts testing `LLVM=1 LLVM_IAS=1`, patch sent:
https://github.com/ClangBuiltLinux/linux/issues/965,
https://lore.kernel.org/lkml/20201109224713.16308-1-ndesaulniers@google.com/T/#u.

2. LLVM_IAS doesn't support IWMMXT, patch sent (needs BE testing/revision):
https://github.com/ClangBuiltLinux/linux/issues/975,
https://lore.kernel.org/lkml/20201107001056.225807-1-jiancai@google.com/

3. STB_GLOBAL/STB_WEAK rebinding failure. patch sent:
https://lore.kernel.org/linux-arm-kernel/20201105181542.854788-1-maskray@google.com/,
https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=9022/1

4. -z relro, again like #1 LLD specific, hinted at:
https://lore.kernel.org/linux-arm-kernel/20201030013228.GA2519055@ubuntu-m3-large-x86/

5. one last adrl in arch/arm/boot/compressed/head.S. Doesn't exist in
today's linux-next, should appear tomorrow as per:
https://lore.kernel.org/linux-arm-kernel/CAMj1kXEC6TvkYScMPk0++6atLZe1yrkrUwMRkat33WEwym9t0g@mail.gmail.com/T/#t

6. .march/-Wa,-march= cases which can be fixed in kernel sources,
https://github.com/ClangBuiltLinux/linux/issues/1195,
https://github.com/ClangBuiltLinux/linux/issues/957

7. IAS not accepting multiple strings in .ascii directive.  This one
looks like an IAS bug to me.
https://github.com/ClangBuiltLinux/linux/issues/1196 probably going to
need to fix this as KGDB selects KPROBES, so Doug won't be able to use
KGDB without this being fixed.

Note I'm testing moving Android over to use LLVM_IAS=1 in
https://android-review.googlesource.com/c/kernel/common/+/1493456, so
the above are blockers for Android.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdndZRv%2B_FaNFUBtT%3DzEPG3mh2cb9vfRFCsU5Dus4zzcEw%40mail.gmail.com.
