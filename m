Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQGWYXUQKGQERAM26BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D866E155
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 09:03:28 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id k22sf21469398ede.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:03:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563519808; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGD+Jk4dY0WqrW1LWhQnLFdKBIy/dMU7JRaD80m/fgwxN+ut6vy6t7peneWNmIHwYF
         5fF4k+mT65Ifh9/YgK55dJ3Ptx8Be5vbDwYcBTr0cwrE1UyThHXCw00f5XUck4EfvOgp
         U+0SdnKq6t7D0zd6neEKBpD79JCz4o38h08U+jSQnf/8uN1l8/DG3jRGxQXta90P4HKi
         SaOab2Hf2x+EOajb6qkaKlRVmgEDaCO+n69QcH/fTmGwe0i5tusF0vAUyvH0MYAM82uv
         s6Lr2urD8r6g3ybcZg7HL+k4UoRrn+MZ7XaklUTqnD3PvIj9D04+TwfqlzU2el1ooqRx
         t6iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=eZ0Lxb2oSXSnoG60NSPMJYpUqVL1MryjMfG8/fmYlk8=;
        b=E/m/ra7sgjmAdvVz8hEJlXOLNN+z37lGXKn0qjkcbEJ3prYsZawIHdZCi7kiZxVgpk
         I1cesJEeZFK/2oH5jShcPpKqPZ9g07uGLILtffwqb6jeFbSeFZPdB7M9OfobAwaEXecH
         Ob8Mmc1N5rjo+mKZFfBXXQiiJvORogpp8XHd0R96getK1il25laJpUI1otA0fw+LvyfL
         /Gzob2qGKdHHemHchmfXel2RpUZ04Q6bxHAImkhU2Obd56fu86hCyI0NDvTwd0Rclqd5
         KPgrZv29e96lWMDY6dswFW5Uq2w4O2Ygfc3R4bIaxf71i2+FandW1RZYLq94jfhrO2xz
         p3Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8oztfYx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eZ0Lxb2oSXSnoG60NSPMJYpUqVL1MryjMfG8/fmYlk8=;
        b=tjGjvLAzlXTi3keDY/wxfTODestO6qgzl/ByrU8y3RplpazAhML7oZsrur2BD3/QQr
         GBJpUSVasYNQhsObAGOigjKaqN4iaUAgsbIv3EPC2yhHc8xQxG6lZP7qGheQktmkpa5G
         J+8MMuv1rzpqjX50cHVk8OvBVY+OjFxSVmJQAVoA9QNACv6ChNyDTHn2U5r2zNXlbEUN
         uQ75TDpXkn6oPk4DQZLL4TuJEW3Et/RPeQ3Xrd6uXpbralh7mgLJCEPbrRtlekfukbeq
         JfPk/mnGRY4IixPSbn5Q1kGGJKnzcZSIqMvns8lJoNeWzBXhA4zgZyA/vZoJ8WqZBvG2
         DcQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eZ0Lxb2oSXSnoG60NSPMJYpUqVL1MryjMfG8/fmYlk8=;
        b=JCeuCWikceamXKT6jF9sLZp6eoeMrokCkp+Ouxrbi6pHshWvmllSL/4DtJPD0HOJwt
         lWNPTa4cJM49WS0qzYgqAlf31nvhhPj1C97Pd+s5VMEtSWC6gTZL410ClDGEceOcMngV
         cEoJbqpZmq6nhv0VLNWKW76bajy9pOUEcXYmRJ8dCwmhFDW/OOmyoG34lN9KRJN9vN2Q
         ZYo6ENRZ132m0NBAs1SUFUKIr2uiIaV0akmtzzvrxJEGyluEYFtrrx9U3rVMYXgzYaQz
         GsLO1Nl1gh7rrt0bfsF39Bs0OSh96yQ5bRO3MMlmppPOeeACjehWh/7cP8/SPZlOFCgL
         Xdqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eZ0Lxb2oSXSnoG60NSPMJYpUqVL1MryjMfG8/fmYlk8=;
        b=XurdJulRSbKr1tuS4mWyLh6fUOrdMNE9/gnaaaXXIijohnPBi7C29ZaWgdc3NeoEx/
         99U0nrpkh25DnU20YglqGtsFfET6iq/k+17Wg4gMTHnJ7Ic9f+bzPMdUv+3Bcaybfq7c
         G/MA78j079Ga9sMRYCTszrny+JavR9ADBiPykmL0OCSP1zWx4yWdLIHVlZcNeoc1XYb8
         P27W6c8DkviPjZEUZ1BDfUcOCubCYYa8EVoeYYvsARH8+xnShViTk9nNnyyLSZXSwppb
         di3U1gIPEmavf8esjEVanJH6zqwZ2JZgNX7G15GK2a3OyZ7JRrdmx4eaHeslYJScSPtY
         42PA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkwbTmjAy+p6YcHOvC9VXIZ5L5I6h6w6Vmj5w919Z8QzQ4B/u8
	vV1pencleeGzHX+jncLlYiw=
X-Google-Smtp-Source: APXvYqwuy6XbnFq5ALsQlOBhsj0jB4aUJ31ynYRh4oAPQOvBbBDz/UP7v6pIKAycO5CNuviypnEA3w==
X-Received: by 2002:a50:97ac:: with SMTP id e41mr44906045edb.27.1563519808731;
        Fri, 19 Jul 2019 00:03:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:aeee:: with SMTP id f43ls7237022edd.15.gmail; Fri, 19
 Jul 2019 00:03:28 -0700 (PDT)
X-Received: by 2002:a50:aa14:: with SMTP id o20mr45064472edc.165.1563519808381;
        Fri, 19 Jul 2019 00:03:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563519808; cv=none;
        d=google.com; s=arc-20160816;
        b=vaGt4pKwwD6XCcbzi5WpU+wrHMp/1VucFny0ujFo81H5jYgagPOHsAfcF6KUrV4k5Y
         0u9yoyESA8W1iwgUcBFdkuswWHhQBKyNh2GN2FvXvEd7vgnW1HJuuwmVvptDmR6KfdAC
         XOvGYmg6uBtiu+yL5zvcOKeAO4Vqqu86UasMUFlbSQxcUft81Ip4UB0cC77D3Da8aCPg
         jTRnBcb0iVo6YnSWIJf1vsKMZzREs3bXOxcBMMM6zLy1pRsMOSwFUdgX5LPvf5ZAbQ4Y
         6QdVAB2EGaGLseon/kMcXI4GYdKxm5sNUYtQ0Rq9jHWh80pyVB9DlCoCJDyaIZii8I15
         LVYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=U80UZn01Ob0xepIcFiQIOV3+KsHca5AWbfBENdSAxxE=;
        b=Kn0IzZ/kfe0HldUHsDdueOxsPEtqtxYWHY2I0BB4DtvThYUJqvLH/OaxDwC6wtcKEs
         4cdQRT4lFcClaZbfl5U6BPcVDLn3mQ7ILsV9aYIKL5hXcDyZyJhDUTVOVG5bIOJ5G8X7
         P2qKheB9e0BhoZU8+iJ3U8zth0iO4N3vd42CgflWpxG/o67Wuvp0k3OZD6j2uX2k2z7t
         S9rkvItW8s8cXMp0jp31+bo3wCW0xSQ7sda6dKyimvWAeBVEZ5pneTk46R0ARh19EPLq
         +YwDPrvF2Ftsq/ASS6H2xAO52F5VsHK1IcuzUVR9nGjmBYomZppo8WIYPisC/99s+LZW
         AEdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8oztfYx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id jz14si1342985ejb.0.2019.07.19.00.03.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 00:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id n4so31169536wrs.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 00:03:28 -0700 (PDT)
X-Received: by 2002:a5d:53ca:: with SMTP id a10mr4012915wrw.131.1563519807754;
        Fri, 19 Jul 2019 00:03:27 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id t6sm29535091wmb.29.2019.07.19.00.03.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 19 Jul 2019 00:03:27 -0700 (PDT)
Date: Fri, 19 Jul 2019 00:03:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: x86 - clang / objtool status
Message-ID: <20190719070325.GA29883@archlinux-threadripper>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190718205839.GA40219@archlinux-threadripper>
 <alpine.DEB.2.21.1907190837350.1785@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1907190837350.1785@nanos.tec.linutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V8oztfYx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jul 19, 2019 at 08:39:00AM +0200, Thomas Gleixner wrote:
> On Thu, 18 Jul 2019, Nathan Chancellor wrote:
> 
> > Hi Thomas,
> > 
> > I can't comment on the objtool stuff as it is a bit outside of my area
> > of expertise (probably going to be my next major learning project) but I
> > can comment on the other errors.
> > 
> > On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> > >  Build fails with:
> > > 
> > >   clang-10: error: unknown argument: '-mpreferred-stack-boundary=4'
> > >   make[5]: *** [linux/scripts/Makefile.build:279: drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o] Error 1
> > 
> > Arnd sent a patch for this which has been picked up:
> > https://lore.kernel.org/lkml/CADnq5_Mm=Fj4AkFtuo+W_295q8r6DY3Sumo7gTG-McUYY=CeVg@mail.gmail.com/
> 
> Which I applied and now I get:
> 
> ERROR: "__fixdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__eqdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__truncdfsf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__nedf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__floatsidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__divdf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__adddf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__ledf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__subdf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__muldf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__fixunsdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__floatunsidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__extendsfdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__gedf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__ltdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__gtdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__floatdidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> make[2]: *** [/home/tglx/work/kernel/linus/linux/scripts/Makefile.modpost:91: __modpost] Error 1
> 

Ah right, allmodconfig...

https://github.com/ClangBuiltLinux/linux/issues/327

https://github.com/samitolvanen/linux/commit/2fd53310b7d7e9234c4018c45aefe056a0784e2b

This needs to find its way upstream again, I am not sure what's holding
it back at this point (probably real world testing), maybe Sami or Nick
will know.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719070325.GA29883%40archlinux-threadripper.
