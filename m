Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEVRV3WAKGQEDGCSP4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id DD67EBE2A9
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 18:40:50 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id h3sf2350137edd.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 09:40:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569429650; cv=pass;
        d=google.com; s=arc-20160816;
        b=XD6Pi/zkHl+cPYj/YLwD32OrgTafga/ewxhLk5ACXZUj0I8WXUVH5heFpkbPlwbMv9
         KwZf9kDI15Zw7S9aBng/omZRD7+VoGUN//n86ZmbhGNVpXSgbrpeO7qdPSRd8pOYJnHO
         56BzH4vzR/nqA3++fnX1vRk8J08OX9x6PslZ4iV2oErbAEgXIr4b5430ZL/BGOJhpSni
         RWEVesLUAX4vkVV+WGq6HQ8exi58nOQjHrY1exNHB36ZQWHj4Dhv+yogXxr0Sjsr5+g9
         QmGrypSWWljUUx4N2AQXnEmPCZRvJAh6dR2vy1FPYf3k9dMQ2hRNrna/ZOf14bdGYqnZ
         hlIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=gf06Ha/3zsXO/p8xvBE16bCyGyh3HH7UDjaVI2OEu2Y=;
        b=RfSSABpCmVME3gvgaGXe2R5ve5CokV5zMET00PCt8gd0h/8aWoBjnfUCvjFm4nTbu6
         rl0QSCp4Gsg758oPbO2m/wxPhyaJ7NbWVQCXJHwFv21Vy/IKQhCIevVsf9bYfLBlWJth
         eY/n+Rx3dd39HX6uoMsGH6cw10Ok76QhFb39pe3Wk7PkjJFqNqdetnYBHv1eZfEtfomW
         4yfqk3btxZZ7UAr4i99Wh5QlZE14v2X8HFzkJPD7QVMHkdrPFG7yLVNbhM2bs0jPUtSm
         tYunqUQ1pVQO5Z9MjPnhvKaCiA8W4XSWETI67E+e65O4Ttd0FZ7MhG4D9xf2yZ95sST/
         Th3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rhDLdfx2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gf06Ha/3zsXO/p8xvBE16bCyGyh3HH7UDjaVI2OEu2Y=;
        b=pQSCHJzbN+UhrQ3WQuks1b/DnOJWXvYR1/AnbMi01mh0dgXp4QRIrMzk0Hr61gOYzh
         g/mjLpMi1GYG4dxANEEpO2iKihCbyR7BWU0rtuUNmYZZaHYPhBfzMTDiL3qvqKZHtvLY
         /Brh7n9yUgnxAy/DRAx5KTayRJWG6JJmuQqgYpE+udfP18MoaH1fN5W8Xc1X4+wQvKUg
         +ySsdwF1ng9HLb165dRViP+9e9C1tHPfoWem5kw/Jr/pqS1LT+H+c1wZPYo3lF7teNY/
         8/M13VD8Sqek/ERGu2R43fMfSWX0AFnEMcdkj5vNn0FhxB5rf5b+/ka3Wz15lvKS+1yt
         GpbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gf06Ha/3zsXO/p8xvBE16bCyGyh3HH7UDjaVI2OEu2Y=;
        b=M/bieelPeMLrBlbDeovvT4wnkt6cNTPiDz6O16TUjxHqmiV2wPdoFNQUxj2CFqHDFW
         bBFZhbPsg0glpgxwbRL7fq4kNdLGNdcwAW/exzuycQiRlAd1Zq4Av2yUTpHL1TYl8ioP
         7GIP+WjAtVT9bNKwqEFCnzi/PpCdfimdSRpj6RQXsdcTYosITwUQlKpTiEb0Yk9oC8BM
         eI3aK0glbqsMc8t+T+X+/m9aUIzm+oNUGXNmv04KUT1Q3x2rofFqskH3k+JBDEV4ujS7
         0Do5BURXPZk2l1rToIJkKLKfwWPvjFlWm/C/miqWf08zsmo8C/lqtSH/Eq63ARKRKFoj
         /EJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gf06Ha/3zsXO/p8xvBE16bCyGyh3HH7UDjaVI2OEu2Y=;
        b=e49/ZcU/lDurUxHKdAFQENzwRG2VXcYCr6WFA4/EVi6EdkruGy/wJnC2tkB0GCZWLN
         tgmAbyUWxl2kCFod9DD8TybOwvB3Es+taCX9WpD3U6Jx7KPmUkETbrcXGDZoa9zGAOEy
         6bXu1cnlO6KN0s7FtYiBoXBVMmqYKwl3hvDiujOVglvTmdExXRB9vD7WIBEd48PxTKRE
         Csfx2LQBw3Y0uXzwb8O7AOKOF+m6YwrtK54qSxrLkL1EYt58yNP1pOqTGnwD46xoCNc8
         EOyOII+pClrAYtxxfCQLp4oGcJlESV+E+tdHaREKs+7WQFxyyehb7rjuh8gHyhMGy7I0
         0Isw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW99XW6FPwdHhcfhduuPstkcHJaJr9o/pev+7YYulEAg8vf2p+S
	9kjY9Yjr3vnYR1rS14qtyns=
X-Google-Smtp-Source: APXvYqxvdTsiornYMKRvM5QsySKGiCvzHigPsEU6yHGMrUOFQkzEp8caU8kU/giYIIiE5zKEvHa1HQ==
X-Received: by 2002:a17:906:e92:: with SMTP id p18mr139130ejf.308.1569429650564;
        Wed, 25 Sep 2019 09:40:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:4420:: with SMTP id om24ls21423ejb.2.gmail; Wed, 25
 Sep 2019 09:40:50 -0700 (PDT)
X-Received: by 2002:a17:906:4a06:: with SMTP id w6mr154681eju.214.1569429650126;
        Wed, 25 Sep 2019 09:40:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569429650; cv=none;
        d=google.com; s=arc-20160816;
        b=xfS/rbOHEsBBl6ytMMCss/i8TLHp3PY2Tw/2j7yX6GOW7pjzshUzQCe4WsGMSTKiMD
         ZTaDa94T2yUKHIhL1K+uMBxhvbqcHs5+PBpNla+YALBCM6P9Iv1QIufWb9R26TMODZi3
         RDZ8rAOZQ8DlHVRPVk7BWTHmFZoki1qbmelr0YvVtKigf5xFSpFCWPoZ5thdBXMUfgPA
         Gf1PmGFOUHiXm3f6quvRoLc31f31Wion+CwlsC/ZDxp0PnzG4aMFOayGNu+muy/F6NL+
         Nc6yg97oosiCVBLoDuz74VJwM5efqm2YL3oItmdgCamm+Z9UZsTxveHNqQCzP/s1Ygko
         g2Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ewxpB7bKwZOLfzm0lqLxAsWHdJjqZ2WWi1tIbZVyLyE=;
        b=QoWevEjXnQq5mi98vQGZgzPkueKwj2d1utFna5TF5VBocLAte7ggfBMektc/hADTkk
         216dWjW3DG1tjueDgKsH+JCnJirN3ix9l+3rDzpMCDLXDKTnfpnezuqVVMMyqjj4d6X2
         cEJaBxQC8GfIytdURKuIx66tEY6dIkyyYFe/gbS4lIDPL7u7FTOIflk81jSl6sTIZIVj
         W9DzltcjaUmtnrOrqO+fZD0pXBhKCUASc1kLuR8ZszgN2vXkGp0wkA9hLE5lr5oOI+Ad
         v4gUty6BXmnCYl3bHuuoi8UMCv/dVSyUt+AfJqjCq4OZ/KmWumC9wZg/FvpjphQZ0SCj
         MCzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rhDLdfx2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q8si308188edn.5.2019.09.25.09.40.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 09:40:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id r19so4945622wmh.2
        for <clang-built-linux@googlegroups.com>; Wed, 25 Sep 2019 09:40:50 -0700 (PDT)
X-Received: by 2002:a05:600c:215:: with SMTP id 21mr8857879wmi.170.1569429649685;
        Wed, 25 Sep 2019 09:40:49 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id b144sm6128053wmb.3.2019.09.25.09.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2019 09:40:49 -0700 (PDT)
Date: Wed, 25 Sep 2019 09:40:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Request for inclusion of f73b3cc39c84 ("objtool: Clobber user CFLAGS
 variable") in -stable
Message-ID: <20190925164047.GA471117@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rhDLdfx2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Greg and Sasha,

We received a report of an objtool build failure with clang related to
-Wunused-parameter [1], which turned out to be related to the distro's
CFLAGS. Josh patched this up in commit f73b3cc39c84 ("objtool: Clobber
user CFLAGS variable"), could it be added to -stable whenever
applicable? Looks like it will pick cleanly to 4.19 but it can be
applied to 4.14 with context differences.

Josh and Peter, would you be interested in patches that fix and then
enable -Wunused-parameter? There are only a couple of warnings. Let
me know, I can send my patches along.

[1]: https://github.com/ClangBuiltLinux/linux/issues/676

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190925164047.GA471117%40archlinux-threadripper.
