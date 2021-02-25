Return-Path: <clang-built-linux+bncBAABBF7X3WAQMGQEP3TX5KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 35792324DF9
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 11:27:37 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id c30sf3601683pgl.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 02:27:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614248856; cv=pass;
        d=google.com; s=arc-20160816;
        b=w/QKQP6N0QHDkpa6W8JcfElR/OBfiMLNT/aSHCc553CupPaaFuc9enRt/qThuloDDe
         jUshl6cNdAUjSDzEDGeZ+veuwa+bvsbTnx59EU491dBAmIN0zuIlkIZcfAcsUelzXmdB
         8uhTroDdBAPpyb48a0UaD1jZUdLznGuCWka2uoCvwXvgOsGiDYBAEvzEaJ7gC+PMVSP0
         45W/AzzVuSV0ay1hLVloCJyALC3rtOAQu4st1AhLMc9wVvCFV3CyiCAHI4Ro/ZpSQ9UK
         1UXYJ18pylqn9DEwgowgPiaOHxlDtgPRU3VfTPj9iQAZV2w4DNlpUch0IJNQeL9ajKSt
         lGeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=p9RJs5mAQdsBm2YJO4tJsbsgdkyLYs/RRjnLXMgLAtc=;
        b=E24E6rAZ9K2x1X/NAtd6fozcAZhL9nBcG0NeawMarpe8XDf4uiB6gZTocuxdtjaGkD
         QHxAy5HdrzZ0oyovuc9/Uzaupc1Igo+2bL4iGDsbOhIUTowcdO/jzsdjTKN3PctIvay2
         e2Ma6uR8ipE2lEZCDhGPKJgur9EfITtHkWRhy1F4oOY9+Zluvwd3aubOP7vDUkk2eYaB
         kqp31+TJB1vYEXL8aby9iNU6bh4pHk/4ioXUC9yxipHsf1zgcCCH6helk8xap6P9o8Ur
         3LRnwOcFxYVELUBAZ9PlbGx9NulweonlL95uz5Dzvm0JN2vdlFGiXnBhGluBeNZpnjIB
         G0uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=YSdoLxhA;
       spf=pass (google.com: domain of samirweng1979@163.com designates 220.181.12.15 as permitted sender) smtp.mailfrom=samirweng1979@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p9RJs5mAQdsBm2YJO4tJsbsgdkyLYs/RRjnLXMgLAtc=;
        b=lN30dvAYWJbPQsUQUOTHuKtvLjMiBg3VjWZX4xiA1W3lfgtfvwORqQ4qTa2Vao1aje
         PDdKgCVPJiJE5iWIHfnV1ll2+C5cpTr7oN/OvsN+o0lf/vGWm5YOZR40p/dNGEXEd0D2
         9TYfk56/XHSWz0Lh83A5IkOOaHXRK/IVpP/6KQmt49lKgzcLGv8eA61axGfOteNcPTeD
         6vPUlF0WwsmQ96mLBLW4oGKnfZEPAwBbhuyQz9v636A9x4j3W9QiMHJBb/0d0qxlds/S
         jJx9ZGAqn+U/OXgLf5tTKJGb/TfjrY0DuJq/2owaLkXdJlFyPxfmqBMK6GNrPLPWoG6K
         s1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p9RJs5mAQdsBm2YJO4tJsbsgdkyLYs/RRjnLXMgLAtc=;
        b=V/6350REINrzS5rYzaVJdEm4+dl4HT9kBaSpRywn5LKpaXD+59hzpJAWMBC+MIGPym
         F2sSDq9O+l9FNedNAYL2AKr4tGNl828IPq/y7+NX96IsgOlTJmZzeVf+tskQRg2ZUcf9
         bOFUDuK22cuR/D6kO0nPxTP6CewgC/khxxQ9OZYH1GXvJuoWGwOqEVk2ALQKcb6oLqaz
         C9afg2kQO7WLvsHj6rVVYtyZPO4OASKYXITprPRDhbNGbL1igVKlA1yjnRpCjBbM7xui
         ce56n4bYNf4trCImQZKop5LOZzejvOz+CMaVhUbh/kZh7ltDEgABrCgIQlspdB+XsKc2
         s8tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RoFiObD+MSeckZ8JyBWwkyHz0OAFe1HdJhlxOPPdCsdWjPxJG
	6W9Juq8BryqCbcxE0YP/BD0=
X-Google-Smtp-Source: ABdhPJxGwfRF/dkqE5jHPBO6PuNk0zVQ8fUv699ctosBiwG2p+KXDAJ2JVVVrGtZN95wRV/zANVALA==
X-Received: by 2002:a17:902:768b:b029:e3:fb85:1113 with SMTP id m11-20020a170902768bb02900e3fb851113mr2548489pll.3.1614248855885;
        Thu, 25 Feb 2021 02:27:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a416:: with SMTP id p22ls2887954plq.3.gmail; Thu, 25
 Feb 2021 02:27:35 -0800 (PST)
X-Received: by 2002:a17:902:207:b029:e4:471d:82a with SMTP id 7-20020a1709020207b02900e4471d082amr2334702plc.24.1614248855447;
        Thu, 25 Feb 2021 02:27:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614248855; cv=none;
        d=google.com; s=arc-20160816;
        b=bXQqwyzvsHYDSIuBlF5XwU6kNZoyyWDXZr56QqbklqU4OCX1jMm6tJACueJm4fD2Hw
         MpAeJmMHGfph4qvL8rT0j8i3dC95GPtQDUUsptYKfQ6qffnhQjZ4+vf2KqsbrrEVitrY
         EALhrvx2+6Vkxn9OQWorMOfuRn4cqWVnKwn0CBnYkWcIq6hZODkZEIueB+KvVHNrbCVo
         rMDI9jwtGfIo5bChtO1keKY/9eXbLCoKjQ+XXTv2cyu6h0rBsGKNFNutTfHDu+gUfCDR
         68J69jXDtxKFmH02QL/nWgniFSrxO+04MO1ebIx0Pqp9ghoiVandOF4IK2XiBhze95Jv
         fewA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=+rDCjq0m6hwtvTdNVQgL34+Esctp41E0VVnWVS4CZW8=;
        b=kUhnjhei2Wtnp2FfNvIS+wQKWOhy3ZevLhbUgdyH6bfzSIyO+I3duoe3LYc+iTD6/Y
         IwePeyp2Df5pCLS/Pi0/SOqYDj8twp33k0Bmus9PeOLCOaJ8SzPmmAxluZgPet4spPUI
         /D/bSgoXv+FSrLsoqSKiriDUdflLokIYCSh7uqS9AF47tuE6UjoOogJrnpU+kwBMbMCz
         B+klHn4kyhTI3kktmDTTcHisy64k+twMzRyiHWq+XtC0Ep6WevdgX3yKX34qit5loeor
         j5Be8Pc+gizHVLhzr+1XZPrrzbOS+1H88GbHb9cQVPulSFEbqbn9DimU+pcR2h5Yk+wz
         ZgFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=YSdoLxhA;
       spf=pass (google.com: domain of samirweng1979@163.com designates 220.181.12.15 as permitted sender) smtp.mailfrom=samirweng1979@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m12-15.163.com (m12-15.163.com. [220.181.12.15])
        by gmr-mx.google.com with ESMTPS id z5si212598plo.1.2021.02.25.02.27.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 02:27:35 -0800 (PST)
Received-SPF: pass (google.com: domain of samirweng1979@163.com designates 220.181.12.15 as permitted sender) client-ip=220.181.12.15;
Received: from localhost (unknown [119.137.54.222])
	by smtp11 (Coremail) with SMTP id D8CowAD3_BBjezdgLaOFCw--.77S2;
	Thu, 25 Feb 2021 18:26:48 +0800 (CST)
Date: Thu, 25 Feb 2021 18:26:42 +0800
From: wengjianfeng <samirweng1979@163.com>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: kernel test robot <lkp@intel.com>, imitsyanko@quantenna.com,
 geomatsi@gmail.com, davem@davemloft.net, kuba@kernel.org,
 colin.king@canonical.com, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, wengjianfeng
 <wengjianfeng@yulong.com>
Subject: Re: [PATCH] qtnfmac: remove meaningless goto statement and labels
Message-ID: <20210225182642.00002519@163.com>
In-Reply-To: <875z2gfnup.fsf@codeaurora.org>
References: <20210225064842.36952-1-samirweng1979@163.com>
	<202102251757.V6qESTrL-lkp@intel.com>
	<875z2gfnup.fsf@codeaurora.org>
Organization: yulong
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-CM-TRANSID: D8CowAD3_BBjezdgLaOFCw--.77S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7WrykJF1UGFWDKrWfWFW5GFg_yoW8KF47p3
	y8Xa15Ka18X3y8AFZ7Kay8ZayFqws5Jr9rGas8Jw1rZa42vr1xtrn2grW5X3srWrs7CFW3
	ArWUX3sYg3ZxAaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jbKsUUUUUU=
X-Originating-IP: [119.137.54.222]
X-CM-SenderInfo: pvdpx25zhqwiqzxzqiywtou0bp/1tbiRQlEsVl91SaGtgAAse
X-Original-Sender: samirweng1979@163.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=YSdoLxhA;       spf=pass
 (google.com: domain of samirweng1979@163.com designates 220.181.12.15 as
 permitted sender) smtp.mailfrom=samirweng1979@163.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=163.com
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

On Thu, 25 Feb 2021 12:22:54 +0200
Kalle Valo <kvalo@codeaurora.org> wrote:

> kernel test robot <lkp@intel.com> writes:
> 
> > Hi samirweng1979,
> >
> > Thank you for the patch! Yet something to improve:
> >
> > [auto build test ERROR on wireless-drivers-next/master]
> > [also build test ERROR on wireless-drivers/master sparc-next/master
> > v5.11 next-20210225] [If your patch is applied to the wrong git
> > tree, kindly drop us a note. And when submitting patch, we suggest
> > to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:
> > https://github.com/0day-ci/linux/commits/samirweng1979/qtnfmac-remove-meaningless-goto-statement-and-labels/20210225-145714
> > base:
> > https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git
> > master config: x86_64-randconfig-a001-20210225 (attached
> > as .config) compiler: clang version 13.0.0
> > (https://github.com/llvm/llvm-project
> > a921aaf789912d981cbb2036bdc91ad7289e1523) reproduce (this is a W=1
> > build): wget
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross chmod +x ~/bin/make.cross # install x86_64
> > cross compiling tool for clang build # apt-get install
> > binutils-x86-64-linux-gnu #
> > https://github.com/0day-ci/linux/commit/d18bea1fd25dee219ae56343ff9caf9cb6eb1519
> > git remote add linux-review https://github.com/0day-ci/linux git
> > fetch --no-tags linux-review
> > samirweng1979/qtnfmac-remove-meaningless-goto-statement-and-labels/20210225-145714
> > git checkout d18bea1fd25dee219ae56343ff9caf9cb6eb1519 # save the
> > attached .config to linux build tree
> > COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > ARCH=x86_64 
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >>> drivers/net/wireless/quantenna/qtnfmac/commands.c:1901:8: error:
> >>> use of undeclared label 'out'
> >                    goto out;
> 
> Do you compile test your patches? This error implies that not.
> Compilation test is a hard requirement for patches.
> 

Hikvalo,
  I'm sorry for make this mistake, and I will compile success before
  send patch later. thanks.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225182642.00002519%40163.com.
