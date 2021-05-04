Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBKVOYWCAMGQE5FMZYFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id CA55C372BCF
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 16:16:11 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id d16-20020ac811900000b02901bbebf64663sf3626332qtj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 07:16:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620137771; cv=pass;
        d=google.com; s=arc-20160816;
        b=oPNFvVAbMS1mEFhbGHMC1EMX8GfJb1b9uFXrgAQDroJWfu0oow9aOMgJrkHKo8iPkC
         q9dUthM40j1UTSUFqDJvpfe55CvF71RtjWUNJhEce07fn0ztwQ9oe3KLmx261UOzcA5U
         w7tu78yVYwdAIODOGwThu8CWNN0p+22Npl6eyLfO6sfJ35I0mlGX0sC99tRA4jUNoeIb
         RYypovmwRlmb0MU1ZzFTxqYeXJza0bjeCaSaZccWkobL4Bz7IGVFe1GVE/mEsp0x/rcY
         FSuD5Na0L/R10lt99+JC8kvqxHnWcu/9csWe7gMgoBf0x5P7DFGfLiMYPzxT8NlDn13A
         XvtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D59bz2/3fmVlsB6rr3sBGSaoAZ+axJW/tqlCOmUOTdI=;
        b=akCcJQohHc6zpg/J7HyizdDN5pnXjW7wOUJFEzWinq4SHZtvoYd/L92pIm3rvMXGYK
         xK5B4MXp4c8YE//ROeGD8IxURAaBRDIn/6u4S3m+hWuTK6her7ch1APmONFnEcVeZiue
         noao76XiPwLlOMka+rI4AwX125ExofY0Ye+DOAMCjVLuu9IG21YgqSiiKcqIkK1IvxsF
         tlCXHOxBZLgqLwB+ur7FaOve3l0odJanmrDBsMxBrXu3BjVjJoadZZ6rv0OJ14JX8TAA
         AJPkxIfYHKcdTwT247/XaOT/p1FEu1Cu6oH68mToWDIkzZVXx/eurb6zQ7vWk8X+ChMh
         xzZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RcUK8zv4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D59bz2/3fmVlsB6rr3sBGSaoAZ+axJW/tqlCOmUOTdI=;
        b=ZiTQfuP38F0nsazv1AV0nqqOOABhGQ+wgs+iDr7578aczEdxp9uXNoTB128k60kS5d
         trD+eXWE/bsXxnPofETtidVm/sT+UBWtBNE6zdM1V7Cmmsb7jliTyXyP3bnQ+YlVogcY
         u/Gb7cyDLUVdiEHZZsBpx7FknkNbjfUVla/nHyCrmmqvrbNhWaLNQay0g6eZKy/pSqWL
         730+emSnLjDpCfVW/4R2kUQ3r/1LrU2fT77l1GkTieZXzlSDcTrvCefOj6AkhymTA0Q8
         1bDxm1Xw2ZyvrwTW6bqv3i8lIo60T9lHHRMcPlFNNnXyjqImBNbdDtlZiBO5ATTCpw3O
         U7KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D59bz2/3fmVlsB6rr3sBGSaoAZ+axJW/tqlCOmUOTdI=;
        b=BM82S+Imbh4rgm2sR2pGh4DLTndDsUvf+Qq50eMJzDw78g8tQOuBTvUrDa1WsuqqaF
         Zia9Ezly15Toe3fuMutydxiXKwgOCuR1IoJCSia7gCYQq0uCf229YxWVBDlFZwcl0Yge
         q95zvPEoFpaG3tUJqiljqASagreAKB4DAf2xPnBP6q8POTDiYTiCRtIsuHjpbhxTBV+n
         I1KNn7PoU6vOxsq3ATjlhpEvML7q477droROA9U2AUErY3Jw770uB14Je1fp3qH3bcNb
         +91AUWnIwrjBR6IAJ2D0qg4ePksNnoUjggIE/3sIx1Br4PepiuZTZ7kC14k2g41ZiqqE
         0Lhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Uo8G3jo5s47BriAVachmQk8ID9QKJa233D6ywRFJG7zcvOBUU
	l/tS3H1i4jQCUtd5j3gU9e4=
X-Google-Smtp-Source: ABdhPJzq8fZiJFx6j1vpTiQZe2ve0uhwUa30CY+zE75YedjG12xE1SikdhFRsGSdMxsy7N5bBW/3vg==
X-Received: by 2002:ac8:5d93:: with SMTP id d19mr23616313qtx.334.1620137770962;
        Tue, 04 May 2021 07:16:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1c3:: with SMTP id c3ls5327436qvt.6.gmail; Tue, 04
 May 2021 07:16:10 -0700 (PDT)
X-Received: by 2002:a0c:ea86:: with SMTP id d6mr22148495qvp.5.1620137770491;
        Tue, 04 May 2021 07:16:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620137770; cv=none;
        d=google.com; s=arc-20160816;
        b=paSVTN3EsCa236Vt9v71bcZFSXATeC6MemSrbweneQ2bBD5w4MFsWfx8wrbMvbSLF3
         4kAkN6dfYIivakD5ywgwDBTrcOXvUyLAAsXmtZM/ybO5WJDvrl0VIgYEuK4ZmdxgNQAb
         HMPFzKhNB5CBf4RDDf6zjdXgX+nX20wFAsdtqTrml/dnTLkW81KjkKZUTGNYDCIv+ckk
         chV5U6xipEHgHC/Ej0vFfpFHlR/SPjsRdsxFkYlwF0nKc5W8w9gGqnkl2WiUBYxKjfIH
         Srda1Zjr6MceBhkzjmb/HT8gXE23tqvgHwpqo+EWxyZ8ab6BtCEQ+GkePboZDhiTgYQ3
         aujQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O+zX7krBlNAXvDpLvOMF7XI+xSad726mniTqfS2X6Do=;
        b=h+kN+KcvzxfRrDZa7zNfe28Zv7EY/q/dhVvkf26g76SknlWP66mmSDNejYaM+i9Eey
         c34WNvUnM7D7Ne6O83HlqxzrKsFVWJ2P+4dYznLnaGEGpLkwkki4HGbSKugHEoMPbAGm
         Ewmpc/lkXxNKzQZKHmL8s+A6/ZbRG7B4HsWir4O57tRQrNrSuG7E3UR8k04RNxwXlrCl
         AfS6BmGJMHq2FJDTrCy73K5EUDGa+fyguEpdmMKCl+j+ZknNkCjVK1Nv/li0XkWmEzGE
         j/iv4EiE7ljuZKRARLssf8Ryp6acR7H5ELHgRST5yZ6MANVNWm02OJqG2mF3pVbyvBgJ
         /HWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=RcUK8zv4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s65si253858qkc.2.2021.05.04.07.16.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 07:16:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3F707610FA;
	Tue,  4 May 2021 14:16:09 +0000 (UTC)
Date: Tue, 4 May 2021 16:16:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Sasha Levin <sashal@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	stable <stable@vger.kernel.org>
Subject: Re: [stable:linux-5.4.y 5541/6083] ERROR: "__memcat_p"
 [drivers/hwtracing/stm/stm_core.ko] undefined!
Message-ID: <YJFXJyoiWo6ArrNT@kroah.com>
References: <202105030311.xWwkyV9z-lkp@intel.com>
 <CAK8P3a0ZdZY94KVwF-C_t+7rx=iHC60ty52AQAmc1VDZwsn9Rw@mail.gmail.com>
 <CAKwvOdmCmvHNpyjNtNU1OeSzK_E_9n9T4CPiFGD7K_JuJDOj-w@mail.gmail.com>
 <CAK8P3a3KLasm-CdcM3HCP6EZO1Vr0ay17jw7zSy0btqPr32WRg@mail.gmail.com>
 <YJDQ0ePGHxmcB7dX@kroah.com>
 <CAK8P3a30xJ1+zrCC4fk+q9xzLspHuE4VM0UHSWiU3-iFeNN+6g@mail.gmail.com>
 <YJEFF1iHZ4o7LUgV@kroah.com>
 <CAK8P3a2-ttarw-31YTbq1YbwAxvG3HwouKC9u1YjfyQwMhwovw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2-ttarw-31YTbq1YbwAxvG3HwouKC9u1YjfyQwMhwovw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=RcUK8zv4;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, May 04, 2021 at 12:46:05PM +0200, Arnd Bergmann wrote:
> On Tue, May 4, 2021 at 10:26 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> 
> > On Tue, May 04, 2021 at 09:41:14AM +0200, Arnd Bergmann wrote:
> > > which is the same as what 7273ad2b08f8 does, but only for this one file
> > > instead of all of lib/*.o.
> >
> > I think a "one off" change would be best here.  Can you submit it?
> 
> Sent https://lore.kernel.org/lkml/20210504104441.1317138-1-arnd@kernel.org/T/

Thanks, now queued up.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJFXJyoiWo6ArrNT%40kroah.com.
