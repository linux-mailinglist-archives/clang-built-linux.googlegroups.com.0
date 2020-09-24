Return-Path: <clang-built-linux+bncBD4LX4523YGBBB6TV75QKGQEH4PHFMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E27276529
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 02:34:19 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id e2sf596715ooq.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 17:34:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600907658; cv=pass;
        d=google.com; s=arc-20160816;
        b=cbqJfr/Oe+5tcdWPzZ67Uu3R5VajFMdH/d+a9jkaYk/pyKPRI63/X3Z8xv3u0BZNBK
         4U6VDYElP5fRkr0tuWelpF8/XImxWDPdvghW1IcM2SZZCokBM9rBmXno6BrBc3lps0Lp
         T8Iy2k4SoMxbRlMD+/MDqgOESS2VwCBkDbSZwcFHldRem6Zl7xYo4nkgrfMHUhuC33n9
         5GJyoW4h7ro+MErLjnBodcluhv735tlp80rA0AifpllhkZSpMsU6JXV3uSs9NAhT5vPD
         KuQJtUhy/4fpsd2hfQ3lt3lXt1gzAvWKsggubNcImalOn+ImdcQDcXIOK4wZmVUEMEhY
         rtwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IqOAJ09OPSCdzR1xiRRD4fCJTIV26Pt0cGyI6TI/wZw=;
        b=eSeaTBDGwODmag1ANyeFzhvL+XwV2Ss6GLQmalbdrLL5R+mBs6Xe3D+txssQpnXkWW
         P0If+kPSbz1epnZqb0mWJYEiuAOoCCewc4wjx6fSF4XB76GuMzcOrKrcxJg+omvYQ36k
         yD52j1AVFgN+NB06PSP0GA/0NQUWdR6SFCr0OeZfHfnCVqmVKix85w1g70EfUjvpqgVY
         kbFa/Y87RRFfbzDvnPbQk2fbD6ragoe///0hqTid6IWCVlDmJ3p47ZT//jZY5t2zPA4Q
         E+QXL8MPyrq88SEoeRUKclpzdeb1BmGftbYG4/2qyLoKjuG7hXMPKz6Ldi58GrOTVEUN
         OhXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IqOAJ09OPSCdzR1xiRRD4fCJTIV26Pt0cGyI6TI/wZw=;
        b=aVAHpenjaVF+xVE3DC0lTgztyJsDcGlyrSPVe3J46K619DhYVKSlEMwnnMQVzuZBO2
         ey9OrwPvtwL2Zx2ecDZB8GCUg9wRU+3THx68DhBqRZTsfSI2pkKBQGAo5XIOuX3yVS8V
         8IR7/7gQoczmMoKpYnYm6IB194kDRL35bpltoeN0aXd9AETxKck0vhrQq4E+14xt18fv
         XkPCgFYOpKzQe8xX11QA2GySGGoxo2KwDP64myIcg96E/ftutfGruaC0riG7WXEspOIY
         GyE7OAtuQKr2nJ3p+GcEFZbpT4pqrYSGoQjmJ8l6JmdDEolYZ6DTYJNlkKYd4g2iLVAT
         W0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IqOAJ09OPSCdzR1xiRRD4fCJTIV26Pt0cGyI6TI/wZw=;
        b=W/pY1y9K2uv4bhl5LTkvjBMRxSVrfuHrpRc/810Aa3FinkSF/S6yuCZtkjNfXN/KNp
         uldRXvZRi/vxgMY1unvY6HzCzlo+SgIACjTTw+31NArHABQxCevh/rqzAD5N0yoZS7BV
         LOU2y8I/adVnyzJy7YyfANoKkhJ8tttjbQrMIOuRbXW23XeNxL7oFxXzW0mYJ71J7Gvu
         uQ3lgoWqZ6vXltGtFZmCI4ACzUIJ0EnamXeTMdRdpvkV7yBXn7fyTPAySSQYuVx0LIrW
         YbIw8SjRg0n1zoaS6kWGMX1oEdBmXIRPl8OhmCmom/DcF0u6r4lnetHk4G/mLY/tVx8C
         a5Vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sGnjxB75ckUZYRXHXMLYa5W2GAopMVcA6BajGjGtXTTS231Og
	49K2JJHUSzTxss26QUpYGHM=
X-Google-Smtp-Source: ABdhPJxTaz3LCpWzFNhirp7/7zczJhnSt10gLHvhPRegX4iA72n/HnpHUzBSk8EpMKfHir2kySJ6rQ==
X-Received: by 2002:a05:6830:1bd8:: with SMTP id v24mr1419473ota.106.1600907658043;
        Wed, 23 Sep 2020 17:34:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:85:: with SMTP id a5ls336923oto.10.gmail; Wed, 23
 Sep 2020 17:34:15 -0700 (PDT)
X-Received: by 2002:a05:6830:453:: with SMTP id d19mr1537191otc.130.1600907655639;
        Wed, 23 Sep 2020 17:34:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600907655; cv=none;
        d=google.com; s=arc-20160816;
        b=EpwdF8VrGpFuOrVOrPn7dclnNvfmccJuG7AdfszZSeNsPMM/mCM6konyQahlg1lXgp
         cCwiSGH5epg7y7MPH1bxAxmpsPvsJiqntigUBOHlkLwAqjf9n8CLPquRUKJmo0KQPbxb
         iiqJHzXwA0V5+jBV7BguqLn0ZttvOIf7yakiSyjqe4A39El1PonVu1+Y2ObhEWhGA8Fz
         /Zhr/Is1GB9yMc6GCsaHrTEW2l8HcR+oET5a2c52blKdHxkW7dDInl1UbyLFiYNK12fm
         wiOV4cVVqgakLIcjCFA9TuW6djlXXOCTUzVNOucDTv5MCCmWWaK2rgKS3e1hiBOENMrb
         OGQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Le9Q5di9vgHD/lWwZH9rjQXB1akwrBwCkm+3rPOGdQ8=;
        b=gRuiyxdGmGN4B7qgDV6c0hQTOzUqJXh2cPwIMqeqM07qFRCufqwPejr3GH7s19HQaN
         uCPvnNgqSsEzZRMPaAN3XuQbJglm/gnmAZ0sZ6lYGhIbwqILEZyZpanM9+OxYlKUlO2B
         7E27DKBHMKG+sEBOQwhiYjEWhbgswQLWW6EFf0Pbw84r21rSM8YFYGhgtBhhPLCI4mMc
         cQBapJAx6veYBbvufiyZs7grsUnAhk4syo2si1IfhanrGaq9K2gjS3MuWeVDsZ3l8kBA
         wNYW5zBkUhatZe7fVkDc+VWey4qP2ZSeXC5WydJh3n4I56nkc0tVBrub3Ao6DR7vFcH7
         BLaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id d22si199347ooj.1.2020.09.23.17.34.14
        for <clang-built-linux@googlegroups.com>;
        Wed, 23 Sep 2020 17:34:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 08O0UuO2022730;
	Wed, 23 Sep 2020 19:30:56 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 08O0Utrl022729;
	Wed, 23 Sep 2020 19:30:55 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 23 Sep 2020 19:30:55 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        kernel test robot <lkp@intel.com>,
        Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found `@', expected `,'
Message-ID: <20200924003055.GZ28786@gate.crashing.org>
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu> <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com> <20200922215325.GM28786@gate.crashing.org> <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com> <20200922232956.GO28786@gate.crashing.org> <CAFP8O3+XC59aJGG4RcSAW_pysftpobXQ=sbjqgeNDoF=TBP7sw@mail.gmail.com> <CAKwvOdkBH7=hjNQiXUGx8D2oyyrVZdDSo0QwS3MO+nU=FCaaQQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkBH7=hjNQiXUGx8D2oyyrVZdDSo0QwS3MO+nU=FCaaQQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Wed, Sep 23, 2020 at 01:43:18PM -0700, Nick Desaulniers wrote:
> I wonder if we need to be setting --target=powerpc-linux-gnu instead?

Yes, probably.

> ah, `-a32` will put the assembler in 32b mode.  I'm guessing gcc maybe
> adds this implicitly for `-m32`?

For Linux and many other systems, yes (if it isn't the default, etc).


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200924003055.GZ28786%40gate.crashing.org.
