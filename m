Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEHT7XVAKGQEIMTXYBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE9E9A715
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 07:28:48 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id m2sf1487694ljj.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 22:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566538128; cv=pass;
        d=google.com; s=arc-20160816;
        b=ReuHj7Oqkwu8eXJxjeXme1ZKkxg8e7aK3L2k5FCg1dZ8Dwh70Tsq4QuFjPhlDO36S0
         zRYGXf7eROl5w4uGyCIAGMK7+SdM1BmLsIUjO61pL5YbQK4yoYJvoC3bY55Ux548+MZz
         uncGvLdromHVgPXN3pgqpopqT36FI4edXaaXvslzJFda4tjfLUmWc7GObAVMcWAWdsbu
         mjKMrPzsfcDLNSNUU3mum0f2deTesVip5VG+0EC/EKJ7WbsY7lTGEUlnIFfI1pNeCJyq
         mWkujaKsgMZRCVv+SvqgajU8c4LsOURaIbmqJlYH2Xtq5vh/z0WeOstvaFyhYgix18bh
         zq+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=5Br2JyzDJUx9fLwRp0W6i51+jeBtZP6jAL+O0F5BKYo=;
        b=fr67owu6GGdlIoz0ZTy6k4tg7HPJtvkooqoMi+Vo2mME7F7Z1lE0LxaVdoFYWWcGCg
         kQUCn0z9B1gAHU4jniczozo7QxPRgn42049DSuN6kXp9Cm4TY1LhTFXx6219JEEhG6U9
         qGiTkodqkKIbP2fG8Wu+bFscfqDTmOb3kwkyOSIZ08rdaAWySIMFN+PBvsyTraFiv9rg
         NaiYtCIAJe1UCffmeAssfaI+QvKQglzHj5zQ7COfjaHtHT6gmg+E+9BtmET5luVg6Kmq
         7SImR0ChV7uctbWjnLwQBxUA8TrtOqg7orxknPfEaL1UjBRw0pnQTT9/jWh3+S9EeFCh
         9S8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZsZhZA5t;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Br2JyzDJUx9fLwRp0W6i51+jeBtZP6jAL+O0F5BKYo=;
        b=AJfznghYlfo54XHYVGFuaTsjsm+Hm4yOepSDxRAbCJXXzM2o+pEOjDN4L84GLYoKG5
         a2rz/BFMErU+mf7H2zbH7StIlwOZ92thCyDXjNn/iW6wpkBkmcHCTdCc0IpaL8iu6nwq
         cVDbUaxOpQzNB/SE2sS79o9RujVvA7bnHtmP/2NRL/uNCaypKbLqHdnA/3EjMaM8ziwI
         7VLUZqTwHiq4hmzweLRHrc60vAxQnIHKf3rvdiimrxsezy2djFmGl+8pXRh4hFZzren9
         zBLi7Nb5/r2R7EIISPIFlK0SsgyKKJ72ciwIhRHPUJWiSVwaSBD/M6YgiodtGvyZ15OG
         se7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Br2JyzDJUx9fLwRp0W6i51+jeBtZP6jAL+O0F5BKYo=;
        b=XGfKq7QoavZsEicCxpMaw7L2kxuc63jEzCZWBAXBybF5BLebYi5cLxR5CeP2TqCg1E
         HpLaKFLRuyYZEkf1kGEvnMQqN6X/nutknJC/psz3FzDI0YD2pz9yi6OufN9l2GcfIS0x
         BWKzGr+Sg5xskUp0LH8CYBDKBfnvdVfbzd6QPym2FcnKkk56pH61KfaDxKa3iGW4tHwg
         GX1BNLwcV4/k+OihHuMHk/fzIeD9IboMjpGmPble0baKkFUMbwHSKtq2ooggOsIJll9o
         +nBKO8ixC0g2NFI5VA7ZamHnQtmP9eEN9SrNv5/BVmpKbIQ/FJ0byHjon3hJ0Dfsoeac
         Lezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Br2JyzDJUx9fLwRp0W6i51+jeBtZP6jAL+O0F5BKYo=;
        b=eeFvKII0XqL2UsOljC4yqRpt2k2erS9Z8rRTqbjl7/DqcWRHpopJ+E+XREi1ItMxbZ
         O0O1+Qe3zNruCokUIzmD1Ag0Esb3qb9O8mWXB7Ilujo+nM0P3hXIk28j2Akh0ZP+ha4j
         hMFFkprDwTaAFWZXvodBtBOhjLj2Lx/icO+ayIMQjRHD3YHBuc0Hjcan26MpncaTjQBF
         LzIIhTU8xSVRd1K1dfzmFdG9ZF/UuAJD1UkhAQNtLpTl3sHzWELbOfx55ERCmoxllY0F
         VFy+VxDEF08DrvO/b1POaPCJH5ce789ahdt8O4S57nTipMWBzMXkMj5Oa1U223KmHUn5
         W4rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWe7LuQXOLGlj+8gISycGCGeH6fV76SSQK2fyI5Hah1McNOB7YG
	gonvfT/D/GmmvfyQiGkEqZw=
X-Google-Smtp-Source: APXvYqz/ZJS6anJaeVEAVNuOou5w1eFMSLo2A0Imb7g1w3+ZIAYLUR2xNMbcikL6fuJpY1ZDT1AKtA==
X-Received: by 2002:a2e:b0f6:: with SMTP id h22mr1698005ljl.63.1566538128509;
        Thu, 22 Aug 2019 22:28:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:50c2:: with SMTP id h2ls754837lfm.0.gmail; Thu, 22 Aug
 2019 22:28:48 -0700 (PDT)
X-Received: by 2002:ac2:4351:: with SMTP id o17mr1598758lfl.21.1566538128044;
        Thu, 22 Aug 2019 22:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566538128; cv=none;
        d=google.com; s=arc-20160816;
        b=hWpAxm2g9IRg/OP1SeZzXCIkA2HBYy2H2/zDXneLW1GY5hpV895H+bJIR/bWrrZcLe
         BDE+lLZK1QoavdOXmWVGPNMdDKBoOI6fYaqVDgX4EOJ1PN4q69aR9LZzA+z5dHlS2Tek
         D94LOO/gzvcX3iOXZPH7RvnKruacfIFABqe5ixtmO4+OTlIrYuU4zl0HBwVYN/oxUWQ7
         K7VjrrtzAxNm6JJFd/icYFPz/WTMB+26YH8dV1a5r1n9yP64QL1zElQBy58opVdMvx6F
         rWGkzyF8GzIkhF0jgX3A+He7AS0mtcLJpTwGL0h5x7INTJmzUTwcnqXDKY1U41nW0y9K
         xP0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0jZOuGomjvqGYTjnoHRQnEezUC30S/yYktb2hSFP7WE=;
        b=cpQVw1v63pQC1U4NDCXjMEA9b/rtEvcSTcLn1t5pC5secxvGiUhJbQpZNXUiEl7mok
         ALisHAwgSKJbP99BfdrT6pHmOsCNhSBLNIXcGYGlcNWKamldY6qMW2pllNDYjkSsMHxt
         6KK4sP2t8Um+h60djTX0hel2bzlknPduah2WEtFT2P8EySH8A/UIHGDwVxcn+bzqt7pe
         gLKJJ8skVaZzwPF9rZxwqzJ/sKfHjaLI+NciThpaE5yvutPbRkp+7a/UMt74J6K0uhLb
         mfWbc3xn4B6G7M/0apmCCD4sjUxX8jwzGEZ3vSi4kbV9BatXq5i1NxNyjoJYAaf/B8mg
         vNxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZsZhZA5t;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b8si66049lfp.3.2019.08.22.22.28.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2019 22:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id j16so7411865wrr.8
        for <clang-built-linux@googlegroups.com>; Thu, 22 Aug 2019 22:28:48 -0700 (PDT)
X-Received: by 2002:a5d:50cb:: with SMTP id f11mr2663367wrt.277.1566538127201;
        Thu, 22 Aug 2019 22:28:47 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id w5sm2377262wmm.43.2019.08.22.22.28.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 22:28:46 -0700 (PDT)
Date: Thu, 22 Aug 2019 22:28:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>,
	Russell King <linux@armlinux.org.uk>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Tri Vo <trong@google.com>
Subject: Re: [PATCH v3] ARM: UNWINDER_FRAME_POINTER implementation for Clang
Message-ID: <20190823052844.GA70417@archlinux-threadripper>
References: <CAKwvOd=wKUhnWr4UhVvgn6NYh+=zQOpMmKG9d_zEqaKLa4_9FA@mail.gmail.com>
 <20190822183022.130790-1-nhuck@google.com>
 <CAKwvOdn6av8bX4xUtuuKeJQdiQU+_Ty2aM8wtjP9+teU0Gt6Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn6av8bX4xUtuuKeJQdiQU+_Ty2aM8wtjP9+teU0Gt6Yg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZsZhZA5t;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Aug 22, 2019 at 01:02:05PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Thu, Aug 22, 2019 at 11:30 AM Nathan Huckleberry <nhuck@google.com> wrote:
> >
> > The stackframe setup when compiled with clang is different.
> > Since the stack unwinder expects the gcc stackframe setup it
> > fails to print backtraces. This patch adds support for the
> > clang stackframe setup.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> > Cc: clang-built-linux@googlegroups.com
> > Suggested-by: Tri Vo <trong@google.com>
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> Great, thanks for following up on the suggestions from code review.
> Since this is going to go up via the arm tree, which has its own
> process, please add my:
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> to the commit message, then submit the patch to the maintainer's patch
> tracking system:
> https://www.armlinux.org.uk/developer/patches/info.php
> (create a login, sign in, then visit:
> https://www.armlinux.org.uk/developer/patches/add.php . I think the
> correct thing is to put the first line of the commit in the summary
> field, next/master as the kernel version (I applied/tested off of
> -next), then the rest of the commit message body in the Patch Notes
> field.  Make sure to attach the patch file.  Finally, it should appear
> at https://www.armlinux.org.uk/developer/patches/section.php?section=0
> I think within 24hrs).

Also for the record, I came across this a couple of months ago, Catalin
Marinas had a git config alias that could be used for sending one patch
to the patches email address so that you don't have to muck around the
web interface:

https://lore.kernel.org/lkml/20190624144924.GE29120@arrakis.emea.arm.com/

Web interface works fine but I prefer everything via the command line :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190823052844.GA70417%40archlinux-threadripper.
