Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA6XTDZAKGQEO6GR3PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A05915D15C
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 06:09:25 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id c1sf4992856qvw.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 21:09:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581656963; cv=pass;
        d=google.com; s=arc-20160816;
        b=qINw126HtlcTU916yd3Rlt43k/7nfi+I4uw7c41nY+js8xu+Tlx7PtfxltOwxu4WPA
         HaZ8liUKlUaqIThEwy5w71OgDOxwxjOiE94wD4N05soxdNVmfUoSWNmIXMs8u/e1Gnsd
         U4fYyZhli/4shyZepfrGlxKju1lc4UDdGnoNesFmd6E+EztXK3JGp/5wFBW/+FilM+UP
         KVr+Wd4Y73TSGJmW1nToJGcK8o2PZSfedshZ1x0+AVNxW/Hey/5h3SCzl0Zg49i7aNVi
         EBK4NGjHK9VLnBUq3sVdR1B+cOT6vcYwDIzjMZOHr5NltxtoY/y6J0Ep+4DND7a/W24f
         XG2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=5qmPxV178HYREO9IxciNEltx85urld84gJIqaTt0D48=;
        b=zCMzPgdGoRJyrdgAdEg3Byp0G2oFPutVYIE62+X8gOl2RjrdtvT9xSsbJOpnAwSwHd
         mvcTKxi36aei5WIL3x2Q2RhFvRiO/JMOTEDO20dS+OwR+nfxL01DjJI7mOsXGLGXyuYA
         vXe5Ymi4bmmboyTs2+4h0hSNwgze1L8BcAOQdmeIo5aJ5Y/ygywvmPRVWH5cbgN5IJDR
         PTZag83OlOZ/yur3Td83jKjDtv4KucqWx6oBNXWA6KpZYZcaFafW6SHp7Gl0R5grfzYk
         uMa4QLiZipDSO8rGZMS4Ju9RZTU6slV/ZzZv4RYn68GZvZ+0jAIi1JINsX2PcU845Esq
         HLrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GEZ7pu78;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qmPxV178HYREO9IxciNEltx85urld84gJIqaTt0D48=;
        b=qTUjL7hZpIMzf6LHiSSTK+VMDakSb5f2gg2aJZ18lz7Am7FXt65fwTfn6AY3oOj+O/
         NZVQE9I11baWC8VI+JPVbQUxKypRo7kea1uoj5tPLB2Eio35RHPDyt+cnUlXhLWgKsFH
         q/2GtloETspiCeNjVIETVQPw8g8BElEAIgqpmfWktmIP+UazencpxCG9S9BlLRWkPNBz
         RBMd8rdO9L3MexdhO/BWzw6qbjAFL0ggtvRgKoC3rsIcGeSaTl7XINkJYX64T6A46J4D
         4ysDpfp1p5O4rntmaNuc6/cjfbSQD5Fz+mOlbSVSJgUUvZpRRJ50ajG4bpO7MIQJreoz
         ZyWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qmPxV178HYREO9IxciNEltx85urld84gJIqaTt0D48=;
        b=XuX4gWezXnxhxnGhnBEtLNgPcyeLF5+ylOy5mXvttrXjtTvS8W9weYiHz46Hu7/Jw2
         6l0RRS0Rb08KOVkAIqYYy6/cJ+1HLT0J6Ogo7tgNjTg/CgXg8Kqgn+Bqj3Kz/RIC+1Ym
         Vjt+ncqzyjuksVHaxYkipCZu2T/MV2pxXQ5wYYCxiSM6od14RKEEliY4YA5Luir0yKe/
         BGzyUr8lVss4bboERImhFHiprNQYxXFafElAYfNRvc8rRwjBbBvgzWF4CVOY794J2lIo
         def34eeEu7kGb7TXubejcvBznzeB8HRWotesuAeQt5NzjmqUPTtqOfAN2z6RsPvocvO+
         s52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qmPxV178HYREO9IxciNEltx85urld84gJIqaTt0D48=;
        b=gDtznGSrKVdyZz+Vu3Qro6DuxXf2yblB8OmCw4BelUJO6l2voJGRW20/qOVpLQHLfN
         7yJVDPqrMXGxRenDhDe3ESuKmgYFRNuzA/jNP9yZldxI/TRBiyxmDs0b7flnRUkBel75
         RcDTRoVxp7B6tnLY08j1d+p0ZWNTJJXE50CQPNVWDwbIAxrswVjwTHEcdwE3wBnvMwE+
         ZWrs88vTbFNsYKkSYLoUXr/zjsd28JcwxvDVKfRFZynrXwKzc3fzHoDIRkgH7hdxRQlC
         1rURwhbnuudOZk/WSxoT2gg+MbfS9+0qHk13graEM7hLCKjBiHwFmmEwJ3Lpy8tUfInz
         AEKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVULGCoEgZXisbLPxcA+bDvKrJP1XAfkAb5Iwy0tnNyZiwv4qj0
	MIeLJCe/M89H6LgiNDSJ+0I=
X-Google-Smtp-Source: APXvYqxiE5vBp2wl19NE+PHIOR3xboi6+zJ9NDKwxQoVsZ1oOiO04Yk4PCdV1gLnsrTywbrMu2o2IQ==
X-Received: by 2002:ae9:e10e:: with SMTP id g14mr938313qkm.430.1581656963387;
        Thu, 13 Feb 2020 21:09:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5441:: with SMTP id h1ls144115qvt.8.gmail; Thu, 13 Feb
 2020 21:09:23 -0800 (PST)
X-Received: by 2002:ad4:50d2:: with SMTP id e18mr730380qvq.9.1581656962898;
        Thu, 13 Feb 2020 21:09:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581656962; cv=none;
        d=google.com; s=arc-20160816;
        b=Lt1sIq76ShhCc8Df2iaBFGqX/MSmXYrsPD8A+zzzjD1AlaR5RP4zkq/botfJe02gJh
         ku974wkakWJ0uW7vFHK/lKztOLccjEUh4EJX1wKmTAwXSGxSpXHyVmOl+I+KCOs9Sllk
         ZpSTJK8BGbxHO5ooW3qpOHBdzBmHHshk7iWCdUiGw/rtcNr1aKqBxLNqBI2MAl9DMxyk
         CrdeBtkXStf9Z64itSxWQwT/Padqq6iU+FxTus4xj7OvQzcHVvd3E9xPZ8mV1BPMKAH2
         MGPt0ddleD0UY5vtJs+ENerk5I5tK4a6FwfS1rI3GSN4A39dOwF9PygLve2Ij4jXPQF/
         vSCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hh76UOBzxy4768QMqBIFnRzj8JqhZHoU2J347BXRupM=;
        b=hAENXm/QvhksH5LhSUBgUnIDH2hlr72oKTl7jMa46hHzLaGR3YlJZErz0VawGaNUXZ
         LTjHL7nwbEfljTg1Iao3JoeEXr1L4f0PXhZ/YQsdMYmQVDjQqTbDrbsfbrzfc2Fggay4
         +VaUYQym003s4BWnFzhFlr7wKyO2mgyYKtV53a2F11jwAQbfIvCXYDRv/C4yQosOUtW3
         e0RPs8apNsRRybfL0Zh92OETTQlK3c5a9vSlgpFsHy6G02Pg9+FVXdhqT55dpryV+hz9
         7r+tOtx5C+BUeAGQ/FN95y4c2dYGNG8kFk7cr1yLX/hC7lhFBx5Ok8T8yO8+zq9ru6w7
         SjpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GEZ7pu78;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id o21si282486qtb.3.2020.02.13.21.09.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 21:09:22 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id j16so8023517otl.1
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 21:09:22 -0800 (PST)
X-Received: by 2002:a05:6830:2154:: with SMTP id r20mr881893otd.131.1581656962292;
        Thu, 13 Feb 2020 21:09:22 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i36sm1773935ota.0.2020.02.13.21.09.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Feb 2020 21:09:21 -0800 (PST)
Date: Thu, 13 Feb 2020 22:09:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] media: dvb_dummy_fe.c: lose TS lock on bad snr
Message-ID: <20200214050920.GB28843@ubuntu-m2-xlarge-x86>
References: <202002132100.mmvXlwSW%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002132100.mmvXlwSW%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GEZ7pu78;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Feb 13, 2020 at 09:11:29PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200210154555.156283-1-dwlsalmeida@gmail.com>
> References: <20200210154555.156283-1-dwlsalmeida@gmail.com>
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
> [also build test WARNING on v5.6-rc1 next-20200213]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Daniel-W-S-Almeida/media=
-dvb_dummy_fe-c-lose-TS-lock-on-bad-snr/20200213-034953
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
> >> drivers/media//dvb-frontends/dvb_dummy_fe.c:50:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 13=
.5 to 13 [-Wliteral-conversion]
>            { QPSK,  FEC_9_10, 13.5, 16.5},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:50:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 16=
.5 to 16 [-Wliteral-conversion]
>            { QPSK,  FEC_9_10, 13.5, 16.5},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:51:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 14=
.5 to 14 [-Wliteral-conversion]
>            { PSK_8, FEC_2_3,  14.5, 17.5},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:51:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 17=
.5 to 17 [-Wliteral-conversion]
>            { PSK_8, FEC_2_3,  14.5, 17.5},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:53:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 17=
.5 to 17 [-Wliteral-conversion]
>            { PSK_8, FEC_5_6,  17.5, 20.5},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:53:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 20=
.5 to 20 [-Wliteral-conversion]
>            { PSK_8, FEC_5_6,  17.5, 20.5},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:59:22: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 4.=
1 to 4 [-Wliteral-conversion]
>            {   QPSK, FEC_1_2,  4.1,  5.9},
>            ~                   ^~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:59:28: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 5.=
9 to 5 [-Wliteral-conversion]
>            {   QPSK, FEC_1_2,  4.1,  5.9},
>            ~                         ^~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:60:22: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 6.=
1 to 6 [-Wliteral-conversion]
>            {   QPSK, FEC_2_3,  6.1,  9.6},
>            ~                   ^~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:60:28: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 9.=
599999999999999 to 9 [-Wliteral-conversion]
>            {   QPSK, FEC_2_3,  6.1,  9.6},
>            ~                         ^~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:61:22: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 7.=
2 to 7 [-Wliteral-conversion]
>            {   QPSK, FEC_3_4,  7.2, 12.4},
>            ~                   ^~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:61:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 12=
.4 to 12 [-Wliteral-conversion]
>            {   QPSK, FEC_3_4,  7.2, 12.4},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:62:22: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 8.=
5 to 8 [-Wliteral-conversion]
>            {   QPSK, FEC_5_6,  8.5, 15.6},
>            ~                   ^~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:62:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 15=
.6 to 15 [-Wliteral-conversion]
>            {   QPSK, FEC_5_6,  8.5, 15.6},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:63:22: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 9.=
199999999999999 to 9 [-Wliteral-conversion]
>            {   QPSK, FEC_7_8,  9.2, 17.5},
>            ~                   ^~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:63:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 17=
.5 to 17 [-Wliteral-conversion]
>            {   QPSK, FEC_7_8,  9.2, 17.5},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:65:22: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 9.=
800000000000001 to 9 [-Wliteral-conversion]
>            { QAM_16, FEC_1_2,  9.8, 11.8},
>            ~                   ^~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:65:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 11=
.8 to 11 [-Wliteral-conversion]
>            { QAM_16, FEC_1_2,  9.8, 11.8},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:66:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 12=
.1 to 12 [-Wliteral-conversion]
>            { QAM_16, FEC_2_3, 12.1, 15.3},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:66:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 15=
.3 to 15 [-Wliteral-conversion]
>            { QAM_16, FEC_2_3, 12.1, 15.3},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:67:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 13=
.4 to 13 [-Wliteral-conversion]
>            { QAM_16, FEC_3_4, 13.4, 18.1},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:67:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 18=
.1 to 18 [-Wliteral-conversion]
>            { QAM_16, FEC_3_4, 13.4, 18.1},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:68:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 14=
.8 to 14 [-Wliteral-conversion]
>            { QAM_16, FEC_5_6, 14.8, 21.3},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:68:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 21=
.3 to 21 [-Wliteral-conversion]
>            { QAM_16, FEC_5_6, 14.8, 21.3},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:69:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 15=
.7 to 15 [-Wliteral-conversion]
>            { QAM_16, FEC_7_8, 15.7, 23.6},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:69:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 23=
.6 to 23 [-Wliteral-conversion]
>            { QAM_16, FEC_7_8, 15.7, 23.6},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:72:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 19=
.9 to 19 [-Wliteral-conversion]
>            { QAM_64, FEC_2_3, 19.9, 25.4},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:72:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 25=
.4 to 25 [-Wliteral-conversion]
>            { QAM_64, FEC_2_3, 19.9, 25.4},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:73:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 24=
.9 to 24 [-Wliteral-conversion]
>            { QAM_64, FEC_3_4, 24.9, 27.9},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:73:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 27=
.9 to 27 [-Wliteral-conversion]
>            { QAM_64, FEC_3_4, 24.9, 27.9},
>            ~                        ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:74:21: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 21=
.3 to 21 [-Wliteral-conversion]
>            { QAM_64, FEC_5_6, 21.3, 23.3},
>            ~                  ^~~~
>    drivers/media//dvb-frontends/dvb_dummy_fe.c:74:27: warning: implicit c=
onversion from 'double' to 'u32' (aka 'unsigned int') changes value from 23=
.3 to 23 [-Wliteral-conversion]
>            { QAM_64, FEC_5_6, 21.3, 23.3},
>            ~                        ^~~~
>    32 warnings generated.
>=20
> vim +50 drivers/media//dvb-frontends/dvb_dummy_fe.c
>=20
>     42=09
>     43	struct dvb_dummy_fe_cnr_to_qual_s dvb_s2_cnr_2_qual[] =3D {
>     44		/* from libdvbv5 source code */
>     45		{ QPSK,  FEC_1_2,   9.,  12.},
>     46		{ QPSK,  FEC_2_3,  11.,  14.},
>     47		{ QPSK,  FEC_3_4,  12.,  15.},
>     48		{ QPSK,  FEC_5_6,  12.,  15.},
>     49		{ QPSK,  FEC_8_9,  13.,  16.},
>   > 50		{ QPSK,  FEC_9_10, 13.5, 16.5},
>     51		{ PSK_8, FEC_2_3,  14.5, 17.5},
>     52		{ PSK_8, FEC_3_4,  16.,  19.},
>     53		{ PSK_8, FEC_5_6,  17.5, 20.5},
>     54		{ PSK_8, FEC_8_9,  19.,  22.},
>     55	};
>     56=09
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
clang-built-linux/20200214050920.GB28843%40ubuntu-m2-xlarge-x86.
