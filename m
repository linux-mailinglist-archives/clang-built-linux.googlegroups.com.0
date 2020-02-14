Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB46WTDZAKGQEIV5YRTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id C513715D15B
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 06:09:08 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id z12sf6594346ilh.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 21:09:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581656947; cv=pass;
        d=google.com; s=arc-20160816;
        b=aC7c1s8ELUhfwzAJ8hWdszSE2+hz+V5p2SrKs2Z65rF/YFKK7KMi3ZnHIjG3fRJsxn
         SnMv+SHKkBKMRVyR5JWnQX2JPZ01jfrK464cIFguzOIXNDAQQQIQBEueWgdzbBl9mkZ5
         dkdRyMSV0aOhu4JCT4BzrxDSkMvjdc3VH39JCiYXREH5XlttYlVx/DKPycOrH2BF9DIQ
         EE2zFcJmrc45lHG+e8wpOOfojgVSFQR3JCWnpVgyriPo0TmDjtaWuC2XQiCgXZYHQatF
         JsT1WZg8q8uBdCpLJ0HMThSIDKstI2/EyVA9Ufj8Sq7DufQoI3YM0ZwQd2E7XScYXCE+
         is0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=zfCSChv9Z88vIrFc3+NLE5DTmCeLwVVQ8usoauA1XYo=;
        b=LJz/5Qx/jz4I65xaTVH6krZ/UcLK5jTI+vFX0g7Uo+U5FklzW9z2STFhGp0tAd1vVB
         kh3UlIOMK5QYtdRlFnOkvlLJe3aSpKp+RaIdCV67Pch2vULKYpyNR+QV+kfUllza6e+4
         H9taEiepeeyZieyBI2yEUMiSFhmAGIwcEJxzAEc/a6bG1F3pVtm7Toe6U5j5Vrn06VkB
         NMa7v16lChpoEFuhKNCGks1/7k/Xzv4Gj28JSnICVyVJP7OZB43GoQvqUJhctUg57L/9
         gEZyIi4YWyw17GpmAZXOXcSlxAGuNG/T2gl4vzpcPL9zRcp9zWpq6ybLVaSi0bdm7bha
         HwzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YMi8gcYs;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zfCSChv9Z88vIrFc3+NLE5DTmCeLwVVQ8usoauA1XYo=;
        b=Tl0vW9JkWbDIERuVfW3pEYBK/CCfrUOzaGPVygI1JC1frYpcVDEGhLP3cYucx2NR9F
         cq3ThTNQjplpg3aAskOS4vZYbXTRe8ALcaxT4twFGS3UEhOvjlbNM58NpRPfWNyp6ifV
         hPxeiSCdTu+hyluLqyQJGCXaYXZa7UYAiZamLMy3n+vLEk7+9deikQ3XOXNR4py3gRXQ
         4LYPHkaeppDYdspI4OCDv5lGfbWkCRcEKGbaR7F7rTCOKRa306y3J6nbuSZseUS0CIDH
         0nEYbxpRO8Y2EubAliw0292Cnqw4SsYvFrrKiD7j4+Olj+2dtJblJ3yjSk2FzJGrfDxX
         o6WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zfCSChv9Z88vIrFc3+NLE5DTmCeLwVVQ8usoauA1XYo=;
        b=n2XURdfZ4CQ0oLFZh69+o2N4K1vcPQkjyImJTjtpyzH3HGosrOZn3fuUEK3Y60lcDx
         7FNh+tKyOGh5jwwVUPFpgqlBLvkFaABDoMr44fDx7lzVP4GDaNUcEeo70HXB+UDwQb07
         wEY6AzfPoMeTQWFZUGUmxAfNtJgYVPz6o8XklB12iED3MqlkXdL6CF5wVVdFcsVP33F1
         cCiZb5qBlzCl65FjJ66WPO8DqADkXLxtp0HMO8xAM0sosp7MNvy6kOWLd0y+69EMMCd+
         HRkv/fppLbDz7uOuPVpeYiLSjRhortwcD2wbgwdc/6hf5iW+3qH8vEBgc/Iwk4cUeR5V
         bT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zfCSChv9Z88vIrFc3+NLE5DTmCeLwVVQ8usoauA1XYo=;
        b=AgyJ4bdXhbycsnTi0yyNvFpkPuk/aFNDd7hxQO2fB8WUSaABkTk7oh+gjNdR2rVZOc
         Xgt/MN8oGDBrExEoV5P5YSf4Wo/erGMySaAuA/Wy9/DU2lvL8olmuuykbd3i3And0RmJ
         Z5uR8o3YFg3RtmHcGUGtO0Cm7qwEwqOQ9T1aYM6mno1W6Ydx3keha+Pnds9FgG7e5LfN
         Q9ac2XfG+NhlloEjcxRcHTFlCU8ArFgJ5H73ZwMb8+GAJkyK4nl6ntRMQnsG+Y4WWFaA
         ov+flIlFQRvX4pkvet9RBADzdcVQwPrAaDNhF/cRsMYtEwe5wqrAfXBHMZ774JhebDwj
         FG3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX2ju8d7VVfwHdncAHxTefrGPY2H/ZKqHYqu99J0MfNogB0NTW4
	/dFyZDPdmNZ6MG/5SdUeGRs=
X-Google-Smtp-Source: APXvYqwAtbpb04Op0WFBcQEBVIM1QxjqfIM2L7y82vX17AtNp927lBA6MQeIatLdnh0COsp3uV/fAQ==
X-Received: by 2002:a5d:8f95:: with SMTP id l21mr893386iol.236.1581656947383;
        Thu, 13 Feb 2020 21:09:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5d90:: with SMTP id e16ls171799ilg.4.gmail; Thu, 13 Feb
 2020 21:09:07 -0800 (PST)
X-Received: by 2002:a92:d781:: with SMTP id d1mr1318981iln.30.1581656947036;
        Thu, 13 Feb 2020 21:09:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581656947; cv=none;
        d=google.com; s=arc-20160816;
        b=jYvmzfbiYKDOUuPKjyiZdEXu/lQVlKMJa/1Nr4c6Gb3HUalc53RzbvLeYX+Wr9UlUk
         J/OE8I66BBL5NMbR0QeYz+/wK5vVuOSTj8d9Xrd9sM9G2rpqgZwd0mCHyJuxKAVJaSlS
         5hb9WpPkcWdXOq5lEQj6oUt1rGAu5OHxQZ97Lbdx19vFAMO2Kd2sTbe4ppMdXF4/Cps8
         4veNhZ7Kj5XOIAC7XfHRTFcM6URXTdYc2fH/uzvzi6xhyEkjuBcZR25JJgJoYZvq4Cb8
         FvxjBixIa7HuyqVcoeRPxkb61eCDhLzMvZLo5orz5T1a+f8mScT4SwxyjWoZ3Ys+lBvC
         QVAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Wz0dPSTaXn1mnJXmN5DhtJLeMVNJjFoHNAJyzLVyZhs=;
        b=QarJqcwvDkWps2rMqeCZK6AQ+TB5US0FzD+C8OgPmp6FCkORXiLBtkReVl4AE/Bhv6
         GwA8JedN/9GDaggwaXxjSGnSJ/JSPrB7HxmI6EvfNcqArI14ZDphOLilxNTlOt/DsaeC
         ZP0ps6pEbamPM4ezdWE3B/cftX4DTT66hYwty02RKL12XGYC5aIFQwcVj4sOBQ7L7/Lx
         4qzCuvtm/HDavSeamyn9Ypwa+uGrJm+3CVqgV8Uwu+lueN7AvTUDHUVWb0knhdbtFOBY
         zw8vu668pU3kSi0ttDBavJ1RxUXtDruEuk+20nUG7frg5lSpwg/yx++BgwGyP9/6pDkI
         m00Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YMi8gcYs;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id z7si356884ilz.1.2020.02.13.21.09.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 21:09:07 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id l2so1799387otp.4
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 21:09:07 -0800 (PST)
X-Received: by 2002:a9d:58cb:: with SMTP id s11mr870642oth.55.1581656946578;
        Thu, 13 Feb 2020 21:09:06 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p83sm1441900oia.51.2020.02.13.21.09.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Feb 2020 21:09:06 -0800 (PST)
Date: Thu, 13 Feb 2020 22:09:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5] media: dvb_dummy_tuner: implement driver skeleton
Message-ID: <20200214050904.GA28843@ubuntu-m2-xlarge-x86>
References: <202002131623.yl4Wr1DE%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002131623.yl4Wr1DE%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YMi8gcYs;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Thu, Feb 13, 2020 at 04:13:17PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200210154102.118166-1-dwlsalmeida@gmail.com>
> References: <20200210154102.118166-1-dwlsalmeida@gmail.com>
> TO: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
> CC: mchehab@kernel.org, sean@mess.org, tglx@linutronix.de, gregkh@linuxfo=
undation.org, "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>, linux-media@v=
ger.kernel.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, li=
nux-kernel-mentees@lists.linuxfoundation.org, "Daniel W. S. Almeida" <dwlsa=
lmeida@gmail.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.or=
g, skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.or=
g
> CC: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>, linux-media@vger.kern=
el.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, linux-kern=
el-mentees@lists.linuxfoundation.org
>=20
> Hi "Daniel,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on linuxtv-media/master]
> [also build test WARNING on v5.6-rc1 next-20200212]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Daniel-W-S-Almeida/media=
-dvb_dummy_tuner-implement-driver-skeleton/20200213-034625
> base:   git://linuxtv.org/media_tree.git master
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project a58017e5cae5=
be948fd1913b68d46553e87aa622)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=3Darm64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/media/tuners/dvb_dummy_tuner.c:64:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 13.5 to=
 13 [-Wliteral-conversion]
>            { QPSK,  FEC_9_10, 13.5, 16.5},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:64:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 16.5 to=
 16 [-Wliteral-conversion]
>            { QPSK,  FEC_9_10, 13.5, 16.5},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:65:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 14.5 to=
 14 [-Wliteral-conversion]
>            { PSK_8, FEC_2_3,  14.5, 17.5},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:65:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 17.5 to=
 17 [-Wliteral-conversion]
>            { PSK_8, FEC_2_3,  14.5, 17.5},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:67:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 17.5 to=
 17 [-Wliteral-conversion]
>            { PSK_8, FEC_5_6,  17.5, 20.5},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:67:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 20.5 to=
 20 [-Wliteral-conversion]
>            { PSK_8, FEC_5_6,  17.5, 20.5},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:73:22: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 4.1 to =
4 [-Wliteral-conversion]
>            {   QPSK, FEC_1_2,  4.1,  5.9},
>            ~                   ^~~
>    drivers/media/tuners/dvb_dummy_tuner.c:73:28: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 5.9 to =
5 [-Wliteral-conversion]
>            {   QPSK, FEC_1_2,  4.1,  5.9},
>            ~                         ^~~
>    drivers/media/tuners/dvb_dummy_tuner.c:74:22: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 6.1 to =
6 [-Wliteral-conversion]
>            {   QPSK, FEC_2_3,  6.1,  9.6},
>            ~                   ^~~
>    drivers/media/tuners/dvb_dummy_tuner.c:74:28: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 9.59999=
9999999999 to 9 [-Wliteral-conversion]
>            {   QPSK, FEC_2_3,  6.1,  9.6},
>            ~                         ^~~
>    drivers/media/tuners/dvb_dummy_tuner.c:75:22: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 7.2 to =
7 [-Wliteral-conversion]
>            {   QPSK, FEC_3_4,  7.2, 12.4},
>            ~                   ^~~
>    drivers/media/tuners/dvb_dummy_tuner.c:75:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 12.4 to=
 12 [-Wliteral-conversion]
>            {   QPSK, FEC_3_4,  7.2, 12.4},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:76:22: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 8.5 to =
8 [-Wliteral-conversion]
>            {   QPSK, FEC_5_6,  8.5, 15.6},
>            ~                   ^~~
>    drivers/media/tuners/dvb_dummy_tuner.c:76:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 15.6 to=
 15 [-Wliteral-conversion]
>            {   QPSK, FEC_5_6,  8.5, 15.6},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:77:22: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 9.19999=
9999999999 to 9 [-Wliteral-conversion]
>            {   QPSK, FEC_7_8,  9.2, 17.5},
>            ~                   ^~~
>    drivers/media/tuners/dvb_dummy_tuner.c:77:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 17.5 to=
 17 [-Wliteral-conversion]
>            {   QPSK, FEC_7_8,  9.2, 17.5},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:79:22: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 9.80000=
0000000001 to 9 [-Wliteral-conversion]
>            { QAM_16, FEC_1_2,  9.8, 11.8},
>            ~                   ^~~
>    drivers/media/tuners/dvb_dummy_tuner.c:79:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 11.8 to=
 11 [-Wliteral-conversion]
>            { QAM_16, FEC_1_2,  9.8, 11.8},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:80:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 12.1 to=
 12 [-Wliteral-conversion]
>            { QAM_16, FEC_2_3, 12.1, 15.3},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:80:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 15.3 to=
 15 [-Wliteral-conversion]
>            { QAM_16, FEC_2_3, 12.1, 15.3},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:81:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 13.4 to=
 13 [-Wliteral-conversion]
>            { QAM_16, FEC_3_4, 13.4, 18.1},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:81:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 18.1 to=
 18 [-Wliteral-conversion]
>            { QAM_16, FEC_3_4, 13.4, 18.1},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:82:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 14.8 to=
 14 [-Wliteral-conversion]
>            { QAM_16, FEC_5_6, 14.8, 21.3},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:82:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 21.3 to=
 21 [-Wliteral-conversion]
>            { QAM_16, FEC_5_6, 14.8, 21.3},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:83:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 15.7 to=
 15 [-Wliteral-conversion]
>            { QAM_16, FEC_7_8, 15.7, 23.6},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:83:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 23.6 to=
 23 [-Wliteral-conversion]
>            { QAM_16, FEC_7_8, 15.7, 23.6},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:86:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 19.9 to=
 19 [-Wliteral-conversion]
>            { QAM_64, FEC_2_3, 19.9, 25.4},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:86:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 25.4 to=
 25 [-Wliteral-conversion]
>            { QAM_64, FEC_2_3, 19.9, 25.4},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:87:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 24.9 to=
 24 [-Wliteral-conversion]
>            { QAM_64, FEC_3_4, 24.9, 27.9},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:87:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 27.9 to=
 27 [-Wliteral-conversion]
>            { QAM_64, FEC_3_4, 24.9, 27.9},
>            ~                        ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:88:21: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 21.3 to=
 21 [-Wliteral-conversion]
>            { QAM_64, FEC_5_6, 21.3, 23.3},
>            ~                  ^~~~
>    drivers/media/tuners/dvb_dummy_tuner.c:88:27: warning: implicit conver=
sion from 'double' to 'u32' (aka 'unsigned int') changes value from 23.3 to=
 23 [-Wliteral-conversion]
>            { QAM_64, FEC_5_6, 21.3, 23.3},
>            ~                        ^~~~
>    32 warnings generated.
>=20
> vim +64 drivers/media/tuners/dvb_dummy_tuner.c
>=20
>     56=09
>     57	struct dvb_dummy_tuner_cnr_to_qual_s dvb_s2_cnr_2_qual[] =3D {
>     58		/* from libdvbv5 source code */
>     59		{ QPSK,  FEC_1_2,   9.,  12.},
>     60		{ QPSK,  FEC_2_3,  11.,  14.},
>     61		{ QPSK,  FEC_3_4,  12.,  15.},
>     62		{ QPSK,  FEC_5_6,  12.,  15.},
>     63		{ QPSK,  FEC_8_9,  13.,  16.},
>   > 64		{ QPSK,  FEC_9_10, 13.5, 16.5},
>     65		{ PSK_8, FEC_2_3,  14.5, 17.5},
>     66		{ PSK_8, FEC_3_4,  16.,  19.},
>     67		{ PSK_8, FEC_5_6,  17.5, 20.5},
>     68		{ PSK_8, FEC_8_9,  19.,  22.},
>     69	};
>     70=09
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

Reported to LKML:

https://lore.kernel.org/lkml/20200214050813.GA37036@ubuntu-m2-xlarge-x86/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200214050904.GA28843%40ubuntu-m2-xlarge-x86.
