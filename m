Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBTHQ3GCAMGQEFDH57YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D581377177
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 May 2021 13:38:53 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id e20-20020a2ea5540000b02900d5ea7fbff4sf6117259ljn.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 May 2021 04:38:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620473932; cv=pass;
        d=google.com; s=arc-20160816;
        b=Imu70727HzJO/qI1HtqSgH9Vcv1pg1FQrek9/fHEKsgxdqFDflXDw+AMpw31zQKUqa
         V1TpbpgPIfjKhOsdD4L5BXQhOrTHqkIchMgoleytAJ6+8J2DjEu+hqnQMIhQqzUrRnsw
         clEFRl/izeiguP1adlE39C8aMgrjEAajICPKp2JKt+QEl6EcFhN4XjrkfF49tQL8AWvL
         U8Wjy++WpRoahkRNTv+IamUH1ll74fQttV+1gp8crcD8Dkz1C9xsneCTA2Ko6ugE1fPG
         /eRlEBbbcMel/bKMpKIBxm7ACwhJEdLajgbUsTot8xo6f4uaei1IPA2SnIy4jll1FiHo
         ny4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=x3OJOtBV4LUlutBndyefmj40/Dk95VsQonFKz9EuCOI=;
        b=N7lPNHHQcJx5Wnx0QK8dXaahjPXlGiJSTd3VpFe26RCz+GgMWoh12MBkC2ncpMxTQh
         2/+/sjQw0vssb8eHKhd4aQJ0KVn28tE3yrIUicc9pOfZC84XmNrjy6QivgjatS8f5VUB
         pOIbY7yBM5dX401b6D4ESJwDgLFy8O5dDlBmo3EyPKXEGmRBzacmNIY+b7ePtH/yaohU
         XNoHShMT/thn0Lkm6rWphxMW2t3ywi3hQrV5CUYNX4Fm1fzU/sNw9jPDl2Gks0b20wy7
         +bcNyVHuOsTmUGX7SfUQXNQKEb5xWsmG066zxEAYNjA7CEo6np7mMQMv4K3lUW/95R4W
         By1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x3OJOtBV4LUlutBndyefmj40/Dk95VsQonFKz9EuCOI=;
        b=Ahe7AeR83ApL2n1gdkPAbhkfMs8UqdlNhXif1kWDBh0PHYuMri4wqeKi8yn/y0cESr
         ckqGd57GJIoBTPT5nJboQ3eLq5dYlMqEsqhmPy0dCGatgg6HKz3LxSO3pZ2Yu79nqBJz
         5wtKuQeQ8Krqf2ZgIC/SgBZMKKPD7A6c7/oSm8yjldUGv4DGI56hKYPxqUcfj/PI7Cup
         VY0WKDOWgfoowajiTfWMJMOfKMM3XRhDuBrlW7yGd8jvr/4sq+0E1dM8aLwsJz4l4qzA
         lKdMdQwG+GjhP2Y/Ymi912D1TPnyLLJUvzbiN6ki7n17SCh5j8sF5dXfwSYnji/LoO5m
         eLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x3OJOtBV4LUlutBndyefmj40/Dk95VsQonFKz9EuCOI=;
        b=YA170yJmzVtFiwl2tEOEKUFM6QO4qjA3JnVYyZgFP3LtP/I6AAskzWlYG8xyKGFXqT
         pedf+7U8qm6Y7Q6FvjN5ehr5bK/V+LM/CmPm1yBZNAq8itKHIfILZaAedGJzGRlZj2Lz
         6cfTNMEW5kgpLXfWfzLQy56SmK/tn9X84jpqF8CU8Jkj3J/E3bWfNP2B9dOtw9M5YCH6
         KVhGk2d5Si7IzWEOx5j3PQ8wHtTdT+CJObqqAQhta67bbs0xJp0BcnQjQ+x2yJltStF9
         MI6ZB3nMpC2UIftzmxbQ4vYapvKUTW0TnjkdJCrpZ3EmEQUr0dScpbeMhKvkxJzPkZUj
         EBgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xjYKZ5waYFpxAuQogNpHY/lYs3Wmn02tupOUh7fqx6k1737lN
	mCYE/PddShkHqweOvDAuguI=
X-Google-Smtp-Source: ABdhPJwZClRiIthVCyiKoGKNRIig1jA/POHcv64iOyrTtyVZ6VAETpJqlG6icH9DwwGS16oig0HmrA==
X-Received: by 2002:a2e:9056:: with SMTP id n22mr11797440ljg.356.1620473932672;
        Sat, 08 May 2021 04:38:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1409:: with SMTP id u9ls1800312lje.1.gmail; Sat, 08
 May 2021 04:38:51 -0700 (PDT)
X-Received: by 2002:a05:651c:140a:: with SMTP id u10mr8595006lje.384.1620473931608;
        Sat, 08 May 2021 04:38:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620473931; cv=none;
        d=google.com; s=arc-20160816;
        b=EZaV/sstQEXvr6Sca66R9snLcNS6v2BJfAnO+PeP5Js83rxgMWVk2GWdvMyp8m+aeQ
         QcwT1a1Hr1YD6Gh3RwMAcsFre57CJV//5RP6Dvk5+hRJm3PegEWFCbIV8olI4sFW0XRM
         htt3WBCjHoqlrialun7usZsUUfcv6Ixy0DRCHL2WZNyisFTd7obh0iHfBZ4yF21/1GFb
         bTaOMl3Dx9G2SPHbx+cH+FzvtMLi4LpvM2tlR4HX3sFtRyiYMLWa4Q6jl+bZX6Yhf4Fn
         TnDLGlKkyQJM/jAUWhBkGdpTzHv4Vrd8cNET7OSUGVxvgD6UWPR5P5TIm5yYVc+znZVq
         EYqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=VXt42xA4oM7UzwpzoNFnlTBRJUFyLtiOAGJAJ71QwPU=;
        b=Z0uMaL1oNq+o3Qbd84mg4VFajY7JRvpafDI5vgWw83o61pWZ6PuAzP6b5L8wpsZkxk
         teYEKDxDy0WLYbh2ctUlGpgsL4l9JZLy1qz2toYJ4BYvlDJvdVwteq1ND6F4Kowyp9yy
         lTB1lgoQwI7NOSVuJwrXVJJXenX9s/nKI2RBl+8jzBviOOSs8Hr3Tspc7uXH9MxcHFpY
         ZGqJV5Td90fns2s8VGtzW4ZMFtmP2cUZZ9UR8aZc84HqCL0Pk5iEuiAIoIv8YJ8X+bjD
         WDmgm63YS9dz2vUaGTxogw+xRJA7SbHZ2lOoz6N5seoCGoXL2sFTYop5m4Eb75hG9Mo9
         S7RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id u22si410934lfu.7.2021.05.08.04.38.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 May 2021 04:38:51 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-wr1-f41.google.com ([209.85.221.41]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MK3a4-1lxQ6m34Hu-00LWOi for <clang-built-linux@googlegroups.com>; Sat, 08
 May 2021 13:38:50 +0200
Received: by mail-wr1-f41.google.com with SMTP id m9so11804202wrx.3
        for <clang-built-linux@googlegroups.com>; Sat, 08 May 2021 04:38:50 -0700 (PDT)
X-Received: by 2002:a5d:4452:: with SMTP id x18mr19275744wrr.286.1620473930435;
 Sat, 08 May 2021 04:38:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210507220813.365382-1-arnd@kernel.org> <20210507220813.365382-7-arnd@kernel.org>
In-Reply-To: <20210507220813.365382-7-arnd@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 8 May 2021 13:38:01 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3GP7Wwyes_08nRQ-ESfx2dQr2Ygdz6jpSC1754M2s82A@mail.gmail.com>
Message-ID: <CAK8P3a3GP7Wwyes_08nRQ-ESfx2dQr2Ygdz6jpSC1754M2s82A@mail.gmail.com>
Subject: Re: [RFC 06/12] asm-generic: unaligned: remove byteshift helpers
To: linux-arch <linux-arch@vger.kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Vineet Gupta <vgupta@synopsys.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:ibxL56I1m1CXHY10jDjcxVrLmzleP2zxYVPzXbXbwyYpD2ukBA4
 NM+oX3GlvjHfiTDHN5Z0dhfE+NlKtqQHopU7HOW4sEgqQKD1EAcmdSN9SyImZ1cBVR8a2Dd
 g/FtK0b0JRSNngz4gdVQKVmQNz0PIP0/9wY8mJsh2vk+L3TH3K5zZGtMKP5JkZsQ2LK2G4+
 5VbIpxErRttb+lGeahHlg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7wpijcUmU3E=:5QIz+SbN6gzHGxhQCQySL2
 md9g85LljIBCmFTIanpMb06yBmw9rxCZaatmzN0cnZ1RxSQ1FYP3/cdXx4SA3rL/7KDpoWjF4
 hSTwJ4FHcNtHIMxmf+DzLb/FqoNT6+Jv5Axwi2Yw7jOeh3Jal9kR01xfbl+/YrP+S1Cgm2OOa
 kXCZWG59IQKS0Jan7EGK9QtKpIlNm9AETWwQ+XqLe9+aWzzH7vXsNLUo5tCS1mNE9FCTxLKy/
 nVCEkdADjcn0x8vCMr5X6Q/MvI3VmX5d2oFi67HWOf6Ck4JqxVvOpKtAjWvxypOhyx3A0hqz/
 LxIdPutEDrXBA/OnhHm0iWPlMQWthxFpTuVnQQWz2Mlrwj7+lMbn5ZFK8ZruUH9L6M9CCOUY6
 kBbO5TrI52MWsP9z8uNDMkb1o9kcz5sQLyZ6RapzBaXLk8HyFUxgEcfaXoCzoaMtOnH58pqKZ
 WHzc6CL9iOcwC8HcZI584Yobg59iZkFyljgMjsqk7Vclas0GcYNwdppS6ViQx5OohWhd8PDb6
 XVLbS0hcUyUsXykuZmLicRS3I3RUU9sdOG8kVL+2LeDQtY1NkAD3BlzHkJMVWUvC9HoSnTe7s
 FhXw6c4D4SpoYbafSWhUn7W8v96BPAN3oaKJll2hf2q2NbGq9IBKbJFObO9desfufj0OVbFHW
 gI0E=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
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

On Sat, May 8, 2021 at 12:11 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> I've included this patch in the series because Linus asked about
> removing the byteshift version, but after trying it out, I'd
> prefer to drop this and use the byteshift version for the
> generic code as well.

Update: I've tried to create a small test case that illustrates the problem
with using the swab() based version, however all cases combinations
I tried showed either both producing identical output, or the shift
version being worse, see https://godbolt.org/z/bTdsjnjfT

I'll rewrite the patch description accordingly and leave this in place.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3GP7Wwyes_08nRQ-ESfx2dQr2Ygdz6jpSC1754M2s82A%40mail.gmail.com.
