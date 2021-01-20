Return-Path: <clang-built-linux+bncBCO4HLFLUAOBBMHPUGAAMGQEY7TCX2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E76E52FD85D
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 19:34:24 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id y9sf641583wmi.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 10:34:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611167664; cv=pass;
        d=google.com; s=arc-20160816;
        b=XaiaHQLhoJCjvgg7bNSL7wLXvwt3TtTmCjfSPle455/uJ1wekWZ1B7oW6f2b3sU3uw
         WiRswawwx4jcT7m/kGhhTBGBk0Y/fhJGCXlRTwAAjJBfaYEU5dKkPFEy/K1Die+bCxmy
         ESh1kR+0GarmqdZPTv9hblsvb2DkqwVhzWNf/087iunM2Nd7BUR87EaKeMl7iDGBA52h
         J/zM+cZ2+RFIBelQqBdIdaAbTT8hpxI4IMt5kFrClVPp0G1gcR4ao76Y+NK0Smw9skNT
         mnL8VhWPDGQLKtGwhGkxAV/PzX5WCTXfEPRDHuRjOgDyChcAexWJgcW27N0xFK+/N6dK
         AH3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PJS4/ekU/UGhCWeNDqEcd3g+o7HRAIfJMMF6VBMBVA4=;
        b=SXeywOSwNOllYC4Gm4uU+16AcBRXt4EPDJsSyPUC+26sTod/acyeYRu071WcMgc0yu
         E+XO1ACBJbqGeTlSSX0c/xmEAxSwVHTuov43n2xmgIFc6YMAhG37duNr7XN58tqMUOGY
         t/fiTqVDs17kx1MQ663mJ/MSfuePi/omkr4+HRY+qUHhZ536D9QkKYTcbt+z1yQ4gn/I
         oBuuOaElOwTKXrnnne0ZERiDOpQlIwKWfunFBrEIPAAaCdrSCFKRC0B0gidfd0iZaZzn
         Bx42gKM/Coihf2XkQFsXI3qhZQNLAuBNn5NqeF5DMS0BMzMpkSIpwoLm9ngWTpfcqaTA
         CMBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PJS4/ekU/UGhCWeNDqEcd3g+o7HRAIfJMMF6VBMBVA4=;
        b=X/Xobab4stLYPmpmb7/7W2eTxrSDRwVAPX7HBfU+OW7jZUlKK3x1Vh7RCRwZpE/xAN
         HbxoQE9TFj4hg8SnvyiC6oomLKQGekPH7zj2AsnZsvG4YvWQHZn52RIkjtYP+yf6A/B5
         KdAcrO4jvH3zDYHdttqQBDUjWT4s0NxSvBhZa3wp+RmvdvghtJmeqWjYYRYWx2gbD5lh
         yfz+1oIm9HLnRZLbNNUMa5YhJGeNUyVVIP8RUo3jt5FUciNZ2EWUxHyVR/BQGI7gdSUW
         3Za+CJ581PQgOztBabY56KTsBnsLgZNZGQIcJYv57PKbbMleMG42FFaGP1e67MjMihGt
         sFXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PJS4/ekU/UGhCWeNDqEcd3g+o7HRAIfJMMF6VBMBVA4=;
        b=QTNbFy5wN7PlhDyMpiooXlvhfApoxpPNhfuX9SEmATqOQqKOXzt7AHxFXdg+0ZkSjE
         8ghliD/qo45yUr9rBl9o7Egpru3kvI6JSJHj9BXhv5O/d7k9UdlfgBI09y/uXLSgH1XS
         K1Z44ZGixbWUHVf9nvnQQZGWJcUhnFU7aZHHJ840fcqnj4Shj1GK2mSzaUCiXgUKMBF+
         xmGVYMZ0uLQd736BpvGvu6AdNCOjrwja2JAf9f2gh9b5obtMSqjxLdsMdM37aQbd3jM7
         fsEGljtcCt6XFN6CN2WCgSeim6k7Rr2cHqtLcFEJZabfxRN/c+CUY6XuwYIjiUXJC1Kk
         dO9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330lWlE+vdl4JY7WE+BU63GQ4PkAJJGceXb40JA0aj0WaF4kBpU
	yWbxcuRqizzNRLDqBq+vx5o=
X-Google-Smtp-Source: ABdhPJyOkFuTUjlaxHV3CZlyBIi1zIj+0756Mmr12p1MMX3r0iQpkh4j6CzJEqriGlX5VMwiT8nExg==
X-Received: by 2002:a7b:c055:: with SMTP id u21mr5749359wmc.68.1611167664678;
        Wed, 20 Jan 2021 10:34:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls2151471wru.1.gmail; Wed, 20 Jan
 2021 10:34:23 -0800 (PST)
X-Received: by 2002:a5d:4cd1:: with SMTP id c17mr10649605wrt.49.1611167663913;
        Wed, 20 Jan 2021 10:34:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611167663; cv=none;
        d=google.com; s=arc-20160816;
        b=VZ/gFNTRWzw+wGX2+HcURpByGDCQg8XizbMdvznXoZG0Xv3Ct7dHQLXP6rGbEAloNL
         RfvFP425IargNKOfMquU3K1teH7pYSO9PPV+NYUbaUKujPDk4OsFH134z5FEswvQAtM+
         qBKe8AhCj4T0HIFUyzlGxOP5Ru595XNBUFmL3DFvLjdqJC3l9MYctLFA/HY6Q9bx4iQq
         xvRfiUBVPhAjTL6mZxzSUXlI43clAb1c7F1wA16Lr0KJ7Zd6ZRjz8g/Y7BLNrUkdnc+9
         QJV/y2NsVD/FX3c17JzMpkVozU5GgV5W7oLAwVOLyUsZ4rjdKoL/2SuCCvyb/xQfHHB8
         XBUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=MFyxTdr4Bg29C06a8CwEjx3E8Z/6nABiaO4PpbGnxUM=;
        b=hV+R6ur7lR+dXoWZ3tqiJvyMsjvitO05pVpyEptSOkudsepQHTWgFCod/Qx5pAZipW
         QlyEEKcS5Z+u/KTJ61XeYjPYrNATf8EZygJtVBczakGF2a0YKRs6pN+d/v00XTCBsFt1
         PDdluucfkocDwcAO3pyzdn7ZsRwVHbmDVP30DPfS59QtdFDXR/hsbxEUWCXh5h6fL8xK
         hLDlQG97h3Feqkd6rHDo/mSU7dxQhI/YPv0lr2D7IEVjNvA/akkNJIs1JwwMkC9YvJ3W
         A9AobjLlI6z7Syu7quMKeqfOhBDpT1zW2/ed+uyoG+P5IEF8VD1PttgTWDFnhlrEbhKq
         eY5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id o203si185234wma.0.2021.01.20.10.34.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 10:34:23 -0800 (PST)
Received-SPF: neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) client-ip=91.189.89.112;
Received: from ip5f5af0a0.dynamic.kabel-deutschland.de ([95.90.240.160] helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1l2IJA-00060A-Vp; Wed, 20 Jan 2021 18:34:21 +0000
Date: Wed, 20 Jan 2021 19:34:18 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Christoph Hellwig <hch@lst.de>
Subject: Re: [brauner:idmapped_mounts 35/40]
 arch/arm64/include/asm/unistd32.h:895:11: error: array designator index
 (442) exceeds array bounds (442)
Message-ID: <20210120183418.nxvxl7x24vy26la4@wittgenstein>
References: <202101202223.ZS7a1nYb-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101202223.ZS7a1nYb-lkp@intel.com>
X-Original-Sender: christian.brauner@ubuntu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 91.189.89.112 is neither permitted nor denied by best guess
 record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
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

On Wed, Jan 20, 2021 at 10:34:28PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git idmapped_mounts
> head:   f7ae224dc0b8097f7a0599c4d92b4a34c412fba2
> commit: 182088fb8d729e387af9641ed83d7d21ccfd80f7 [35/40] fs: add mount_setattr()
> config: arm64-randconfig-r004-20210120 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 22b68440e1647e16b5ee24b924986207173c02d1)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git/commit/?id=182088fb8d729e387af9641ed83d7d21ccfd80f7
>         git remote add brauner https://git.kernel.org/pub/scm/linux/kernel/git/brauner/linux.git
>         git fetch --no-tags brauner idmapped_mounts
>         git checkout 182088fb8d729e387af9641ed83d7d21ccfd80f7
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Note to self: it's really time we get to a point where we have a script
that wires up new syscalls into all architectures at once and takes care
of crap like this. I've wired up multiple syscalls and I always forget
this fscking arm/unistd.h header. Fixed now. :)

Christian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120183418.nxvxl7x24vy26la4%40wittgenstein.
