Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBCG6774AKGQEKHZNY4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7344C23067F
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 11:25:28 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id t3sf4049306wrr.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 02:25:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595928328; cv=pass;
        d=google.com; s=arc-20160816;
        b=qYIuYUVMnoBoFFAvtrlJz5r3dvT5LmDdQ55LAop5sL/hm0xugH7BQWeJEUEX8uye7M
         9DLGTfxXcz4Y+EUd7mb4gflN7L7+cXaawOohpeVkYHJFvopCnq9NKJo98QX/8LmrqB5o
         Nw0CusWdZhpMSN/BL108fyxJi5NHnj32G1bh8xISYnlBjWalNl8fLl4C2Wx6Ndzc2d8D
         ug2wWePUYWkz3Rs5F7MagB/6rC3/jCXLJtH4Y7iADBb3/bpj67U/XSrY8PKrcbDuyenJ
         JAhiIMZTAMyT00bY9HVuWo2ENDMPUW5YUR56wzsZtWGhljInNNX+8/AMcDLOt9DVCn6C
         yi9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=mopuVv3Kp7tpvVns8TzKjP9zwQa3+3eotLlkLXOFfWk=;
        b=dBEvuHU3o2MxZ7hib6fFBrUzjxbqjh/RqHFmScZd2+amVmJPU5Q0vjV+F92N6krQqe
         NvVfC1hYN2Mrt/AmDOEV8Rg90S9Y/HrQW1EtAvcYhfIEyEUz43c3jeC/iYTIZ2qX9v8x
         bmGMQWvJVwUwtE9SZZ4f+SXAGYNEqZ3jm0ydvYRrvil/91AR9A2fpZqtIctuxPLOGRp5
         R+H2LIJZBuyOQKO62/ZyErbDFLHC5BsI5JldtoI5ZkOYab2i7RV4Ft5Xj0QnqjBOTGmK
         1yuTdhFjNl4nLQ8ayszsjywaKKVuP7mgAtW4aXKbqHCb6wBR1t96A+s7RSCV3dmDcjNq
         8dow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=aHeUfiFV;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mopuVv3Kp7tpvVns8TzKjP9zwQa3+3eotLlkLXOFfWk=;
        b=igHvrU48wpSCPvt7aP1J+nrSRmblHD+5PGo/Pynq8rFgZabguw9lh8wg7eU7K3cyLb
         rHPt4kyj3M7ULfcih7D5Umqd05HIXu4saT8s2+LSvFhxGHXMMO6PdJonYkst5qZVLU2V
         /yxIgPrnk17+4GzdORyobQZa+9jPtvGxQHe4kdM43idqvKuS5X4fs6mrbvKvjFGwQCxc
         sAqxgzOjBmIqWNLIaXH9gsdxx/iNoSKmZn6YEkKoGAskLQMsxjrWDOIM60bdSW6ujGzr
         P/D3iL2QiEbQL8dpzBBFRIq289u9wN3bQxvJn+mjrVAkDT3RVF1liZT2XctZ4p0iHhuy
         XIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mopuVv3Kp7tpvVns8TzKjP9zwQa3+3eotLlkLXOFfWk=;
        b=LeWMS4KxEWoyezmmcbG3owyrVbokUZgLdMWUjHM4kAlCKZDPjjrN2WgmaNyN5Zl+/W
         yTMBjBjRxSE1kKCYqK6tVzshD0YVvgWgHWlqbh8++SmQtE7kd4Qlv9PAfCm7pBOGu8bn
         lL+4KXfTFzFQK55YdppKiwxFsCTLPipbLSmHIipSx1UFU6Mj18fX5y8uEJA1g2BDcOb6
         ThhB/30BBgcamLYs6LXfmZhggBzaNo0FBbyicV/pjEXEtsH/m1zZy1pzK2/joWJjKDkl
         I1BMER8S1BRlZpYfQP6CtSTRrMi+paVDJRQuFvSogr4CUsCHM+1j6TDe1Zk57geEzBYg
         NArQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DLv77OB7c62yantlSnimq6vAaUpqvxN6WmagagwIhGncR4Q7g
	e/E7Z3p/PUsNDcaUuKP2HRo=
X-Google-Smtp-Source: ABdhPJzrFt20vrru31yk5ycUbiRQRFPqVspxWKp/54s6fIPJ8JgS9fzip1WEnwEkWVk2Ei8M3avJ6Q==
X-Received: by 2002:adf:b1cf:: with SMTP id r15mr25896726wra.118.1595928328244;
        Tue, 28 Jul 2020 02:25:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a587:: with SMTP id o129ls1159964wme.2.canary-gmail;
 Tue, 28 Jul 2020 02:25:27 -0700 (PDT)
X-Received: by 2002:a1c:7402:: with SMTP id p2mr3163556wmc.117.1595928327784;
        Tue, 28 Jul 2020 02:25:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595928327; cv=none;
        d=google.com; s=arc-20160816;
        b=Kyt2CsnpehGY0fkYEOELi2A54kSVQtElcW0kkkjX5yjz8XWWxjHwMRjxbHQAnl3lbn
         9x2pR7oT8jHwS4hWkLGmCu2reyzRmjdUWF6saBw97Ul+8YOQVDf9EbtxRAbs4RkgFTOC
         KZOjUBZFqa5QqHM7d1MVSAjHXpeNHpTR32zt5vMRZ1rMJPORZvstm9Rg8lmo8x6lw6pc
         zM5dLmwAki2kyWUesJQC2cj7vJP6YFBjjJ0SuIgRetdDPiNNoWv6JEau9lM66NymDjO2
         8CgCuA3aBOXcCNC2SOYrl1XWJhCNuzFIlFgBBie4cQ02bsR5xRpR2Au4j74g0Z6oceUe
         4GWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=K7IbzvhdFlcnv03Ol/Kf6lmSzJI/tImJAndLuCmzHeU=;
        b=B85wAQSIg5+jNBZcq8a03oDFY9FaRNB9DuuW3uFJ2W6cgIoZPMG0thbdYnGXDyE2Xr
         3d+PRrup/ojaAhvSE6ybpgiIv9NJXL6KCAFffK6oUn+3XT4tXHYHlWfzMdpVdelS3/mN
         0xnf3owssOz8ZdroXIAw8zf86Cmb6JfgxuOkggiJSku2laoyTowjc3BbSYdRAonpTxCf
         Gh15TQGvqcJ16cPbl08BIbAAQA9z8BlJVG6CdrvQQ0cxF0f/bwZDuNWHkD+XkImnr+ZK
         bxa5G2XKS+ewU8Lnb4hN+b1+AtDEhxdJ+54mbrJYkQtd6kKv9yztojP2nCXaKbXbqG4A
         QJdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=aHeUfiFV;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id l18si736606wra.5.2020.07.28.02.25.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2020 02:25:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id r12so17519244wrj.13
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jul 2020 02:25:27 -0700 (PDT)
X-Received: by 2002:a05:6000:8b:: with SMTP id m11mr19989392wrx.245.1595928327473;
        Tue, 28 Jul 2020 02:25:27 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id b18sm16422477wrs.46.2020.07.28.02.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 02:25:26 -0700 (PDT)
Date: Tue, 28 Jul 2020 10:25:24 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rong Chen <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: Adding branches for testing
Message-ID: <20200728092524.GF2419169@dell>
References: <202007180528.vD5KVnHi%lkp@intel.com>
 <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
 <20200723063243.GJ3533@dell>
 <19e886f4-f4de-2605-d2fe-b6009ce97aa0@intel.com>
 <20200723064625.GK3533@dell>
 <440716db-2411-e4a6-6e6b-0f8d679e558b@intel.com>
 <20200723080844.GM3533@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200723080844.GM3533@dell>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=aHeUfiFV;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

> > We have updated it: https://github.com/intel/lkp-tests/commit/c0286b0f2=
4d04bf11f83e253df7e237a49858243
>=20
> Excellent.  You are a star, thank you.
>=20
> I have added one more repo:
>=20
>   https://github.com/intel/lkp-tests/pull/73
>=20
> Please see to it at your convenience.

Any idea why I am not receiving results for the following please?

  https://github.com/intel/lkp-tests/blob/master/repo/linux/lee-linaro

As far as I'm aware, LKP should be testing all branches.

What am I missing?  Did I do something wrong in the config?

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200728092524.GF2419169%40dell.
