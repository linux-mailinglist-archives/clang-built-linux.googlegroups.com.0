Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBK4XYH3AKGQETHB7X7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C63301E7076
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 01:39:23 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id o8sf2058429wmd.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 16:39:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590709163; cv=pass;
        d=google.com; s=arc-20160816;
        b=shB/OV0dO0haASjIWxu7dkGs6JlvSTzCZoTbH8LP5vnOWUfx6KPOpgB3OH4MMeO8Qo
         pYbHoC70LUWZk6xSoeEPNDk1lwdvZInZTHU9jm833rtLXSLPmx+1MS46KVQOLi+0dvhX
         ipmUcG1ERNHt4aWsipWUJcD++zvVeLWTKQysmAbKoYrc0uN97RdUnhJs57coCZXc5AIA
         FlSlxHVvJQiP2lupPq3JApxrbWf9PXbsEHCwkDUqMKImpGIyc8Vgb6C/hcfv5mH8hhzu
         HIyCNcx86fotIlrTFV0TdPKr0fnohVnI6hfEw45edJDYz9KCIRVzSfQK3pA0lCEgpjjw
         aAoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WgWWsrRX072whPAPwTBOjgdXdY8InR2MDNVZPnJRqEc=;
        b=FYAwbnFnGbpuDhRe/3UwyMe8zwaOYSJKQYfMwY3C9KDQQWKYMiK+ZcgcGny/5USdn2
         Bf/1tqbJoZvkU7wYjuR2cArD6md/u28sJFjMvfFvIj1srXvhYjgy0e6LP7sRMlba2yMI
         rWhy5YEOLQgFl5yrH0QW304uP68mkwupfIaIkO4jta11Cc0xP2IOxxyT5Omq7DsIfACg
         dboyeyaD3yg7vkDSwIRc/xGi6MxA2yQe2Crg1fulvPuqw5JmB2uvNI+Dkcpw61uc6a6/
         D7cE5cS0f2+5fcnlp6gFuV2fcuoMM9q7dG1O9xNk06LFmCyUOmZiKpcntFkXmn/jomYG
         Gxlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WgWWsrRX072whPAPwTBOjgdXdY8InR2MDNVZPnJRqEc=;
        b=KabGrMSlhfJiyL+40mNXgOWfBKyBWlIEwVRf0pwOsYzcEkqcYYN64aXVcgiNegQMm6
         BCRe2JJppAtygkIMtYVqb3GFuQie9jSDJDSo+lFpgOcAtMPuAsbeLccjCWyHfwTHqrGl
         iVV45h8eccsDGtvEVajosLqYq8wb2gkYZnpOeMT/3XK9t+F6tglEMGxRy1C1Ey2bjokJ
         kP+AP8rFcxCLKpajRyJfGkAug7lOW25Iy0MgNjj8JakAtPo77JFVwnsT1SAI0h2juggB
         lDzqTFngjdmhclLDQe33Q3Qbirex909SxJ+9ma+eeNCmkAeInwI0RiG8WU+rZ18GWFaP
         dv9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WgWWsrRX072whPAPwTBOjgdXdY8InR2MDNVZPnJRqEc=;
        b=uWbFvXBjB+kJLY8DiJDsQWBvY8rJk7iRCDQE394rakZRK7itFHlq4Fe+8AhJAFs63A
         YBPw/h1tg/HRn0ksfLl/yiGP0s7svcJ1c1t/cXUIGcyz1LC7XCboFvuT2w3GdHSgFAU6
         EbGPsDNwi7PpBVAuWMumZOeU9PiP1EuYVdxN5lP48YbIlylHvZjNMT6sGLqJtpmQlXbs
         0rvHV/2JOJD5ShTTmrFO52mZsHgwTG4QUM4+3KnWIPQdwK05xI2+i8zCGHIhxek6WBMw
         kFfQQK1I7zCzuN7c9CNMVs3WLqikzW5AJM1UX4eOlEGKLoblEVMzYIA6XPj+VKXDom7o
         MKhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tv95f2dyTfvOuAbAqBnxgn+YJoZGo3KSmej7HBJ07iDyXHwO+
	OJO3HhN1OIzf+Aj+VzBOWJA=
X-Google-Smtp-Source: ABdhPJyGvWAsP8Ro9BZSGPKdVRGpfi+xSAUWGSRiwwr6NGQ/Wt7IfzGNCZSMJaPSpyL4oeU6dv0wtA==
X-Received: by 2002:a7b:c448:: with SMTP id l8mr5958256wmi.51.1590709163513;
        Thu, 28 May 2020 16:39:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls4548712wrc.1.gmail; Thu, 28 May
 2020 16:39:23 -0700 (PDT)
X-Received: by 2002:a5d:61d0:: with SMTP id q16mr6067443wrv.182.1590709162998;
        Thu, 28 May 2020 16:39:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590709162; cv=none;
        d=google.com; s=arc-20160816;
        b=Aey0nVVftTOPFNj1g5wKars7v2blwT6a1tJlj2koi09+qbF6ro2UPfrtcFK1/zEyb3
         PHwTBRyqMIwJpiX/BWJ6APbsKq14OjrHKAyheGXFw6M+rXGWd7sZDD8gl48hWMD6ka14
         rXIaagGzs0n4ltn876XSR+D7sqmGnDerSaHDm/vj4I36KmHYrZkbP6zpiiY1YduOSlfs
         yGyktm5UtElMLd113w5c3kLnjD50ukt87OzIofG+u1L18lsOXoye8zP1pP/FyfqdlXBx
         OHJQmYJno/7vDUPI/WSX1g39aaZFEyvteqf/AX9TYZjnLBdXzhOGAvPdQGrCiuuWXa87
         ITUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=dhJnm31pzecgYG4v3F5EUxSf62Cs7WAJL0BCt3Ud7Dk=;
        b=T6T+sTyWLUXMACckBComRr82BpauctdFEaaSpXn0j4TVTQNXSXjRrsDPbSXixJk1wN
         rO7LIQJBCYUm10nvZ4qbXYmwRCxaQmy0wDXHxP65ESWgIXS1EeZ9/BoCRa5ObD+yaEpZ
         o9yrgEceewRiMSRTjxvAtzNMRNp5X5ydoPZGaPVBdcNWIUglyYgCsg6/BKpIDotOrzk+
         qnEJsslfjTqfsfmgWEx7I8VO5LUq2px1OvJKgteil4sZylmsmLdlBpM/e+1NgNMe1AXh
         RYXaIQNVIRUXl1k85l/1f3Qf58903TVmPxpMzVZsVUjZtUxUTosVqIlIVkBovPU6fY+8
         MDBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id p15si312937wmc.0.2020.05.28.16.39.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 16:39:22 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MMXDj-1jOi9V1qUx-00JZVE for <clang-built-linux@googlegroups.com>; Fri, 29
 May 2020 01:39:22 +0200
Received: by mail-qk1-f171.google.com with SMTP id n141so684957qke.2
        for <clang-built-linux@googlegroups.com>; Thu, 28 May 2020 16:39:22 -0700 (PDT)
X-Received: by 2002:a37:bc7:: with SMTP id 190mr5296867qkl.286.1590709161308;
 Thu, 28 May 2020 16:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <202005270146.iZ16Zb9Q%lkp@intel.com> <159070877291.69627.13269208631006456530@swboyd.mtv.corp.google.com>
In-Reply-To: <159070877291.69627.13269208631006456530@swboyd.mtv.corp.google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 01:39:04 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3N8qyyS+T5_MJZtcDdh1LSLBVjb9t3JtCVHZW8TU5y1g@mail.gmail.com>
Message-ID: <CAK8P3a3N8qyyS+T5_MJZtcDdh1LSLBVjb9t3JtCVHZW8TU5y1g@mail.gmail.com>
Subject: Re: [linux-next:master 6122/12912] drivers/clk/ingenic/tcu.c:326:34:
 warning: unused variable 'ingenic_tcu_of_match'
To: Stephen Boyd <sboyd@kernel.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:J579+wbMrcjUG8vw8KMP45Z9ED0pPIEL4MHCmeL0OpBPFsz3vQ7
 vVtxxCPn2IIocimtvRzBeGWNTXdx/VJB+f+H3bNVZzKosLENATBU5i40kbipHZbbXchOio7
 y6J6IVRBdUipKmmqjMpQ1vpIUU98JHCJdSSpnLwAJjgnsL7RkXY0/8WNzjW5J2QoliqGhYY
 m091vr9CZliq/NpUE8Mtg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eMo5lsKQkJI=:rkFEPljPQL4hqrbX8NKkm1
 nT1NiurJaBF0rgczBrem9D/E27LGaaLUaWzL7wSuSYa9z35VQhcdCbC7UhUwTSiojGWxT59gJ
 1UQJmEuY46olO6Ul4jvrxZhyj5je4ehGxmC+6XcnBHKtYBpYMWnqjvEMvwi31rWJ9nDU1zCIZ
 dA9i38Y/l1OYg+6YZ9XWtmqZHRHqlC4Ill+srm2uqEWqgOcvoYk2qz5YEJsJ+xTNGQoiPHaRa
 Ogz4F57g3s2VKxF2x+FUkLhHb6yQM+dKXloVDu7DuXO9PGaJe+SkmYx4Ru5kBnfnnWMRXaAzL
 QoeKdBqqpQ/7yg8ESgte819pAiO7eKkAnirFlPyQbwtVwjqMASNG8cEytkyuTbNldWIk22R88
 4dF49NuPTSCb6c4vLhVcKWb/SJ6mqu9el6bZ7frbc5voLh9p8ldMaBocGDSnnK4+2ZgntIYCX
 6vDIs1CIuEE7hMDVyC8m/2YttRtjCFsCdwDAvW7QfhmtIt5BUXXkgiMcl9478vjh4rqpKGXBS
 xFA3SIfVQZqXgQ7VhKpm8H2JR99NDDPvMM3tgTanLd9rqWjauBYbNcCbI3Ma5wVgwyf8ZB0Hf
 parR91TPJzhfXRbNJRaCHgNiSXzKRw++bM21UGFarmPXzUpIeex+Z/BHtkz1c9QraI8shCOrm
 C/5aNOfFrqGMGRn5dycgt0oP1N6BlBfltyz9DureOL2Z2G8s7bLUkcJ0UCSnnsHOopJQCquwp
 5C82Gvy7dnu7jiHfdWpXGOM0kP0hUo6NlXoS/DD3Z9azjOIbI0KwiLUvNNRrhKW1Jt4orIX7z
 5srCdmsY07i4ZoQviACJQXK6lwG8x91JhgKe85brNrVLJxrKXM=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Fri, May 29, 2020 at 1:32 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting kbuild test robot (2020-05-26 10:54:49)
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   b0523c7b1c9d0edcd6c0fe6d2cb558a9ad5c60a8
> > commit: bbd7ffdbef6888459f301c5889f3b14ada38b913 [6122/12912] clk: Allow the common clk framework to be selectable
> > config: mips-randconfig-r012-20200526 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install mips cross compiling tool for clang build
> >         # apt-get install binutils-mips-linux-gnu
> >         git checkout bbd7ffdbef6888459f301c5889f3b14ada38b913
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> drivers/clk/ingenic/tcu.c:326:34: warning: unused variable 'ingenic_tcu_of_match' [-Wunused-const-variable]
> > static const struct of_device_id ingenic_tcu_of_match[] __initconst = {
>
> Looks like we need to add a __maybe_unused marking here. I'll do that
> now.

Either that, or mark the driver 'depends on OF', which is probably
needed anyway.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3N8qyyS%2BT5_MJZtcDdh1LSLBVjb9t3JtCVHZW8TU5y1g%40mail.gmail.com.
