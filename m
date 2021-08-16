Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF625OEAMGQE2HYQSMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA443EE024
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 00:56:24 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id o17-20020aa7d3d1000000b003beaf992d17sf6776440edr.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 15:56:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629154584; cv=pass;
        d=google.com; s=arc-20160816;
        b=O4XPT8NNEdzV3DG0TieZsZAFfMOmT0+F9KFH76FqN3LfRrFln5X3rytYbuYj5a9I2k
         TCGeleF2SoPGul6grpcJjapJ48TWem3vYlSxoBrj2pvCa9+L0fb864kXLtQSstu/Gj3z
         Z5JDbjYSevvj5ToAkr404/JzxOWCH2+rIDCnTzboR+DNeO2ni6un8dgjEOu1CtJ9kSvJ
         2UnUVuXhuZ2qlh9oMR11+aMtzdDCUoFZHwQVppv4N2SSnvBpcmkRsBwo41tJgW2+S7+Y
         283wQn0+yK6d92nBYZxtZaf61Vs8G2ZsNPbzS8RMbOuAY+JBGG8p4ClywpfQXxX45JpY
         wAJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=GkS3u7kg1pBXGEegbHvhyr2QkZ9/ncE8nXFRM2rMUUw=;
        b=xJHjvx4cr47pr5GtBuAfM3rM/xs41Nj4UolE09jtpJj8claBSPVfRSIaAaayD4BfrK
         ieVyIFu9Myh/YBTsAt28hw6aw93kOdhKQCS0yRiukIqKN514Ise4B0jxySaoACBWExdd
         d7Ja/dtn4rbA6mr9+L+Nn4/68kAG8G9sgnNZShxGfXBkcZv/d1lObhrKILMoGX0HRuEi
         1c9tW8+howGbx8V4fyZwYZWapbT08eDquF12nuuVrsYFH1xhCxSNVTKDF3iGo4XHTHMH
         3nIUxG55VVk0lhyGqxJtZnUzRP6bfCf85pkRazN+190gzU+VB1uCYuIk0k6PYqGD5SGo
         87hA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tli8mte0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GkS3u7kg1pBXGEegbHvhyr2QkZ9/ncE8nXFRM2rMUUw=;
        b=pn898ONSZn/dmXK1rCCeH60cYwcFcXrqC/511c9HItotBtQqYe3hcAQZ2/lFzBXh7f
         WD+nGW/7vcYKo09jF11gQ4x71mxHmJfH1fLHH5hXKbYfGCh3F5pGL+NpdStcbAqZAHU+
         hSHlZJurrfpIJ7Q2woZFpT4q/N6hQSX7u84yynrmtlp2yAhVs2P35XTZeXHbrqaLmSDE
         Zv4TNDER/ddACgksjtLf6FF7fBJmTFomvkQ2+Hapse7HYQmlPZeSaeuvrL78nBUl998S
         m2Ipm4hAc1MFStwvvyaB8nZ0IXYJWiUXU9hFdPa3JKfylflYL8088FPuaI1h5iodWaJm
         6tCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GkS3u7kg1pBXGEegbHvhyr2QkZ9/ncE8nXFRM2rMUUw=;
        b=uhPeKD0iGocLG/hM8BcF4d/WF9NHZjaSAW7ok6ya3ICaZ5LlR6gWka2hdoAu2u7tYN
         iCKUhRg0j61oFI2WR6THPXffhMghPB97arDHsJskMrmb2esDbdaOo6kAEBxTDSYY85Fo
         mhkmgWwSZ2BQvgFH/RXs1vEytr20k+UfqSCOY8ztzZAIlAOdugPwMImzt4WCLRglS2uo
         vxzFzd/q8FswdsZSlizQVe38/NVQqcgtELA7i4piSapdlA09IClyJiIX0GNKS2w6C65I
         aSrJGxp2Y/aQUMWonHCZ3cy2i8QEy1o12DE5h44KWXYmRIa092jta+klBZM9k7E4LiYq
         msNw==
X-Gm-Message-State: AOAM530MnU+OEaddon5SnEsi/JF1MFNKM1rI+2DhZGJC/+vfAHBhAaZH
	0kFTw+bWlB86oIeWnRb0aT0=
X-Google-Smtp-Source: ABdhPJxAREbPcFjWJpxM7bjNUayq9+PBWO7JLNYdoHsRCSKGZ6fRRqlC4cmMdZ5oxfM/2eEoCnamag==
X-Received: by 2002:a17:906:3b87:: with SMTP id u7mr494480ejf.66.1629154583925;
        Mon, 16 Aug 2021 15:56:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:332:: with SMTP id q18ls160988edw.2.gmail; Mon, 16
 Aug 2021 15:56:23 -0700 (PDT)
X-Received: by 2002:aa7:c40a:: with SMTP id j10mr515183edq.133.1629154583118;
        Mon, 16 Aug 2021 15:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629154583; cv=none;
        d=google.com; s=arc-20160816;
        b=yVdfK93Ys3Yhzy669SBKECrv1+0d04RWn9cLeUOEa/Q7G6IuIUFdAIF8Eyi5GLYUpn
         wJxBEnrC/x8oHaGg+kfx1Gov9I+YspMQ95tEj/EfsnIKLWK6CngywJkdVFbr0djL+5Aj
         xuDkUVyuXX6UHEbSu8wanFKNVh3pqr9cf3Tc9Hw0IedMOi00b8vI8Kr+HurOXbSjJxVG
         V6AhSCyAUy3TVHbMfS+O0cC7Tb05IT19xQZMbPb/LD4XMUpPq0lDi2hY8Nraihsiw2rG
         oOBjlPl7BvgyoixAOqOffJeCkTVUqb308sIi75dWpan5QTm80NZw0ZFTUprzsWgnu71I
         1hig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=AfXmtbc4S1d889DGJ+vWa9kDjJnCVENi4u+ds9n1snk=;
        b=ldaxtCBUaOldMSSyO6jVGdMnvgY2ZSWrZWCGe1cXGX31cLjQ06rM71vmdgJODkWFDz
         UrI05j7FcaD+gK1gzRcjQoWwYUJGne4FCx8baxJZyDLc9Qmf8J0QiTYk1PhRS0nvMWWD
         oZsPUIDjpPjyGztmwK2RHLWDls35lpNJsfeD/mui7VlusQ4sA42wdQZkCXsAAhv2qxHY
         zldE/Swb8Gzp0XRKXVzgzGmMnkOqX3yYa6gxoU5JBDwuBX4PCF5+TR+QmzkowVmwOM3L
         YBiNgH+H4z/jleXHloIK4pZgVCUDTDOU4WNFzXJNEBG/yc5IRsxaHDAEy3gB2JR5R83E
         a7/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tli8mte0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id o4si21124edv.3.2021.08.16.15.56.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 15:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id x7so29743011ljn.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 15:56:23 -0700 (PDT)
X-Received: by 2002:a2e:8109:: with SMTP id d9mr451741ljg.495.1629154582471;
 Mon, 16 Aug 2021 15:56:22 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 15:56:11 -0700
Message-ID: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
Subject: painful llvm x86 bugs
To: aaron@aaronballman.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	craig.topper@sifive.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Tli8mte0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

Aaron,
I'm overjoyed to hear you landed at Intel!  I was doing a bug scrub of
some of the missing features used by the Linux kernel that GCC
supports but LLVM doesn't.  Is there any chance that you can have some
folks on Intel's LLVM team take a look at some of the more x86
specific ones?

* -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
* -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
* -maccumulate-outgoing-args: https://bugs.llvm.org/show_bug.cgi?id=28145
* __builtin_ia32_readeflags_u64() unnecessarily forces a frame
pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
* Inline asm constraint alternatives ignored:
https://bugs.llvm.org/show_bug.cgi?id=20197

The last two in particular hurt virtualization; reading/writing eflags
is significant overhead in virtualization on x86 and with LLVM due to
those last 2 links we don't have a way to read/write them as
efficiently as possible (as GCC).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8w_nnQpbY2Yyg35oY8j%2BK0yL6K32Cd9wYLp2VTvQjXw%40mail.gmail.com.
