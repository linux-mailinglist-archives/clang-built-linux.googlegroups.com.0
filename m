Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBTPAW35QKGQESTFCMMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 059BF27834F
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 10:54:39 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id o21sf1628214pfd.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 01:54:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601024077; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHNX/EE/CVL/O7B52lffEP9OPnReLK2c7wfq0A6kCWsgOvH62uxLN8bBh/zwU5frzq
         x76+izxsWdj6ybPy4WCpTxS1KZ/MIlU0hz9OqJvr+y/W0u9+6y1BE/v5KJ9H/4AGnS3E
         V6PLJDEY6rT4DoVabnOcWAIfcAsDtHG/7faznWJRylthMmdvWgRyEzLZqdbpAYNC4aHQ
         o2IcEKBi03rLs/THPrp554X62+AsOgH2daeWgcPssxTUtFdpNWtl6kcWItW4N0wRyzKq
         +GPIHh92QL2plOUtw/9upd9j0uSsXPCBM6dqLR1cFGwY2trpoPGaozFU4rvgODgsQh3j
         gl4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8ALheJPoHmGe0GRH9x6IVxw744y8HQ6+CKWPFqcwpbw=;
        b=S5ytFQV8BEILnevbHN9GPgMnfEhZiIkGgOzWjD6JYkqhvffNjaQ5BEok+Ca9c7PTsG
         fj27B/ehMBZSOUx/SLb4qPM27BIceaHIsAZbf5HCZ16NADIy7pnnBJkv2oiaA/AMbshS
         16KgkWMGwlDjQwvbNLU8+fRPbk5GVMwoQYatyvzcGML4UkQJ3Gf0aQ12JTqBUD6tSSOr
         wwXpHJknZ4ASCcry4OB2Ks82pMdeCl+jY9qBfTkVrgyMuHLzQiJPB9P0tEIDwZXr/AZO
         FR9xrdxKpT9qhquElkMh5skFuH91eOKpZH2gPZ6258eFN00A6LcO41JJ2nuVyZH7cBuO
         mdMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gE8po0vH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ALheJPoHmGe0GRH9x6IVxw744y8HQ6+CKWPFqcwpbw=;
        b=KelVlxwIgAr8VNwBTfNEV3d4aBCLIQRAH7lb5N+dJ26c7+4rIJdCUUbtrLUnC3OAYy
         yr0wkNK8rSYVrUUz0094o4ILj3NMEY71yDBphtK5YS6FbtDbi+vKZMeOF+emCDv6hh36
         JQVBJYVwLxLY4lHpLu6+W2IMRfV+lWGpGrqLb5sGQPWfP90BKmrn87ZXDj8wKbPIvxjR
         kgLHSRJiwED85rJ2ua1lP04nxNKoRnYIt+K0H7lLAj7alRuvdlCJqR/60WcgnLqPphOj
         WP4fHuplLphAJGA9FpC/2nSAVvoFcXfgrS10KkjdMbQJwTWRJoQCLob02UsNGjisroWb
         SmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8ALheJPoHmGe0GRH9x6IVxw744y8HQ6+CKWPFqcwpbw=;
        b=etZI+G9oxLmiHaqYs2NPh/A/68nArk7dUEy6gEySONiZT7v32GLTU5RME6E06ghnyc
         D7Vm6qd5LjCvsPhcQI/WEKSyWwaHtOaUEynz64WkAPeCF7lT+dJwDRjWHoUJFGIB3qLb
         nQjKp8atKad1a1QLxitU93dodpi3sN3fIOjdbY7LxPN25hqkrrmERFI+NDAewLShYanf
         hCthQVvL7wGNA495NUidtddI8UrToQGWAXJ6LwnvQSLQt3vey2R8ayiJ51QvLjQqAgA2
         Kdtj6x4k1+bg5MB1F1quEsZ0cVKm1bfuXJTca87eXO0EaMe1ISfxBUw8uGQRFSjFAlD4
         jZag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533L6wxQgxZiEEwF9ayqWACrSqvDBJjw51zxQpDVOlzVOM9cPH1U
	kiJcRtxCKQAVZgQjdpPRODM=
X-Google-Smtp-Source: ABdhPJw2JBGc2RDE2vZPiWJ+u3WscQruMfTobRpJJUb1W0u7k0mzwQ8Wwk5+GkEVmgPT6jA4nMBODw==
X-Received: by 2002:a17:902:d303:b029:d2:63a9:ff1e with SMTP id b3-20020a170902d303b02900d263a9ff1emr2221047plc.39.1601024077759;
        Fri, 25 Sep 2020 01:54:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2292:: with SMTP id f18ls841385pfe.6.gmail; Fri, 25
 Sep 2020 01:54:37 -0700 (PDT)
X-Received: by 2002:a62:2c09:0:b029:142:2501:34f8 with SMTP id s9-20020a622c090000b0290142250134f8mr3082993pfs.81.1601024077196;
        Fri, 25 Sep 2020 01:54:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601024077; cv=none;
        d=google.com; s=arc-20160816;
        b=ov6nd2Nqtdv5Rtf8Lkukq0HutGs3TNiJb6l0X7ZFD5QLzbyE4kwCO2mvEXrjtk/sC0
         bXT06o9EWVXkg+xgZbPnnE6DCJu/YM5ZazL7gyy/QMLDEzRZZywsl9WmIqlmJoMPjkCq
         TUvU/MZVg7znxLUumWb/veT9EkB0BckuiWbuQO1BZ4GU3djAmTpYFtIwRLHYKHuFc7e/
         v6THWDdaNS7wCdRxpUs8etUgBHrT72kohw+01jlc+KJ9MX5bN2F3ej1U1bfsboTwDwXA
         GV9DL9lZkEq36KE9JCO5iNDVjLd1b8LZeA8pc33cPR2mEn6vFH9Ryg8nKR863MifNfP5
         MiPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E4TJPed0QvTV9GgvNrkmgtTEQKB2A6bzHULxYfPreKw=;
        b=wzssrobQMvh8XNI9FX8Rqen1MwoOGm5dj9kfMlaz3s0E6LWemaUItaXgNJk5njhWeA
         XykbtepbChi3J1XvJTEziDfDQgTV3w0/92MhmmG10ovsu2QH0hymx6XeUv2Illcw+MJ+
         yKGhCNi7PLnVVWssfIHQL7FgHCiQZ8BHJCFR5q1mzLLrVlwzE5l2YW/iyWV6ilA7van0
         p529feosf1Kx9jblvePMjHOYxL052ycblGQ80AYC9pPFE85XBJG5v3e68LIKHl6RbFX9
         pvwr+N/KsIRpUeflzPNqGHJxH/39tJSSKJ+cT9JggPvdBHiJpClSm7QfVo2u/Hhq+Ypo
         LOcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gE8po0vH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s3si173927pjk.3.2020.09.25.01.54.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 01:54:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 38D8A20936;
	Fri, 25 Sep 2020 08:54:36 +0000 (UTC)
Date: Fri, 25 Sep 2020 10:54:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: LLVM=1 patches for 4.19
Message-ID: <20200925085451.GA2041632@kroah.com>
References: <CAKwvOdkHBGXSXiX-Sgc0D9PiG7eCUyGPE2kAuGJ=NO-CCASp2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkHBGXSXiX-Sgc0D9PiG7eCUyGPE2kAuGJ=NO-CCASp2A@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gE8po0vH;       spf=pass
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

On Thu, Sep 24, 2020 at 05:04:45PM -0700, Nick Desaulniers wrote:
> Dear stable kernel maintainers,
> Please consider the attached mbox file, which contains 10 patches which
> cherry pick cleanly onto 4.19.y:
> 1. commit 8708e13c6a06 ("MAINTAINERS: add CLANG/LLVM BUILD SUPPORT info")
> 2. commit 7bac98707f65 ("kbuild: add OBJSIZE variable for the size tool")
> 3. commit fcf1b6a35c ("Documentation/llvm: add documentation on
> building w/ Clang/LLVM")
> 4. commit 0f44fbc162b7 ("Documentation/llvm: fix the name of llvm-size")
> 5. commit 63b903dfebde ("net: wan: wanxl: use allow to pass
> CROSS_COMPILE_M68k for rebuilding firmware")
> 6. commit 734f3719d343 ("net: wan: wanxl: use $(M68KCC) instead of
> $(M68KAS) for rebuilding firmware")
> 7. commit eefb8c124fd9 ("x86/boot: kbuild: allow readelf executable to
> be specified")
> 8. commit aa824e0c962b ("kbuild: remove AS variable")
> 9. commit 7e20e47c70f8 ("kbuild: replace AS=clang with LLVM_IAS=1")
> 10. commit a0d1c951ef08 ("kbuild: support LLVM=1 to switch the default
> tools to Clang/LLVM")
> 
> The series is analogous to the previous accepted series sent for 5.4,
> though this series is for 4.19.y:
> https://lore.kernel.org/stable/CAKwvOd=Ko_UHWF-bYotqjPVw=chW_KMUFuBp_o8uOg0wOyHyWA@mail.gmail.com/T/#u
> 
> I don't plan to backport the series any further than 4.19.

Yeah, I wouldn't worry about anything older than 4.19.y at the moment
for stuff like this.

All look good, now queued up, thanks!

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200925085451.GA2041632%40kroah.com.
