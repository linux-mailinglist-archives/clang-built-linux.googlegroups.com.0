Return-Path: <clang-built-linux+bncBAABBQU2YPZQKGQEBA72N6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FF5188510
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:14:43 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id f19sf16767734ill.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 06:14:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584450883; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bqn4sKPacf8BY35wDrud2ZxInw0jecIZtWeRK+x5S2HXkFRKl7aLZsktBN8TrwioND
         YtTmqBOvo/Vv6VhExKFngzKDTPy0JvT5OOAIP6GXTrogjoaRU2UHhJsCgSaKM0ribEPE
         x5Loek+YP/TAApHFgRW7eVblPz1HEK0ytmznIcfoAY5A4lh0yb0w6niF0CkD19r26AHK
         az12CzVVSUMU31Z4WVueGYvm45w1bl9JK5hK/eZjK97nYuaZP7DvtJDqGyrivtUgXlvo
         m1oo70KKmLEQ0VaIvdU8AyKAMtX3wwtiJuL0xcXjhx1WZ134Qth0fNDhCLhiX94+L+i8
         usew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=rhvwJjZKVHwX5yd+uSlqolgkQsAvgffDJZ3PEcmR+Kg=;
        b=ugcryA2l5dLqY18oIsSG5AXQhpJNOJTTq3yiAoCVTRiTjUNRQ+SO1dSUlS3lOyxji5
         MRdSrDpHerXVZWo6tyT+5UJoghgr2SgyfeEEIFjBSTl2Fzr4slD3ZRDcjhbt0tcdNZsW
         oDySHnUbRzRKw3/CtlhRBelePe+PccwZycGTVmpm/JvDnOlVs46+KhJYhejiBLBrp3a0
         08lbM/syP14kHi+x2h11gidMGiB6xXFCDj9Vlj7bvMxfbVX/HmQTWxVXTJhH1KfmE/ad
         cdmHzAPooH3gp140bEEZfk0FpiV08YBR46DPe+PZPIZPa31xB/quV/b94lRLpbWoy4Yx
         Waig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rhvwJjZKVHwX5yd+uSlqolgkQsAvgffDJZ3PEcmR+Kg=;
        b=JcPR0HatL2zEzQPw2IxwOzUuJbeDKJYnYtqDXeW5rJYF3dgrN2GWIiGjNtvGhYnyIW
         9srS83xS9RPkCATOKDs3hjy23/EOzGdo1potq0Ak9IacRYhScTVy38qBXT12fj2k7Rdu
         YJbo432gNALZ9y3UccsU0CPG7IOlD5iVuTC8Rb4/npaYiwsjgKAFrUtyPVzAOfIwnnLE
         R+yV0kHsZXLwG2SEECWrovUQH2HL0LGX4b0tdY9MPKZHFzY4ebGe6EBvh84Lza2gKkZQ
         8LPa4r2PgYHuitoH061zpnhnw/etbdI5ih4i9YargQnMcMUAccwxP4BiuMlldDSlofkN
         hGqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rhvwJjZKVHwX5yd+uSlqolgkQsAvgffDJZ3PEcmR+Kg=;
        b=PrhbvpQ+N5Ztzu6LDtIBRDoPlliSQHl0+xBguD4aR3E489wx8cKiWYta8zBHdsM9Vx
         t66ffY55L8aNkc+e8m8+pQN+Rz9CMeUFicWRC06Oq0LKbsGaGeYGg0HmazXshx4rcqf7
         1gQP4ecOL09/r+N3RVXHRg0TVcRdPBafsEjqc3sveNpHqNFpA6NwzA0nxOdqEG3QbCJi
         sKKwgcXwi2ELh64U81iTYeJvyExcpTzkBHhieFmLHd9yTaWdBiuDWeSL5cyjkQi0vZio
         jqeo3zM4amVyyvnACI3dm+uGxuwmrp98jg9ZQE7oI7ZBI0dvAZ9djMkuPtDPh3wJKkZO
         Jckg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0sggqJI+EnIy7dRUe2yfVYrL15sJdFsPX76BHqh3RtIWoXgDtO
	Xi1yCGKx9sKJAyw4uHrykO8=
X-Google-Smtp-Source: ADFU+vthsNtqHOBnTAqpj9qXuiULWrtNNnSI11kcJARFJu5Jq6L94qzHK7gcPjYH5Qr4Hqg5RIUaqQ==
X-Received: by 2002:a92:8312:: with SMTP id f18mr4997926ild.98.1584450882847;
        Tue, 17 Mar 2020 06:14:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8106:: with SMTP id e6ls5801773ild.6.gmail; Tue, 17 Mar
 2020 06:14:42 -0700 (PDT)
X-Received: by 2002:a92:3b8c:: with SMTP id n12mr4983902ilh.186.1584450882252;
        Tue, 17 Mar 2020 06:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584450882; cv=none;
        d=google.com; s=arc-20160816;
        b=CRQF1Pca2RJ2zAM7kVlWtWnSMyzjSNdOyvI8TWgngKHMsX1FEsQcBC0BWdrLXvhXAh
         6AwlaZ6WWNvNasJ0csHGdMmCKFynTG6XupPALIaIx73jEfoItUTiVZVRte1iimg+XAdi
         wdMmfDEK4hHqMoKOaq05wvMpaYN9Ws5zrU8Wcms105zAo0GLj4tXeLkjYPs47VeTZ/V6
         qqK1x1st40iKhSoBYd6xsjN5cCDXYwKqDhkSv34nBlw42P2GROl+w8s9/5G4WYmJW6n9
         ijFIQ3NW3lG756nQzvjH3O6cYTHSopF79JrH/K+UnpFO/sD80YSQzQKD8OuF1Zgs0vEq
         XLvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=hKs39o/uerq75ZUminyQhFs0hbiXe/U9vgIQ1etfdN4=;
        b=IhVbXSZcoCSzM6WF2hNtd6vFY2FbNVTEAhY7wZnpgT4xzFNG6OVZUjmoU3Oj1TDdxd
         WB87imuaN6djOJC25GPnYnSBwfsnheMBBk/bdeYzoL+QnjPis1TijE8pfAJdymGXJxDj
         18gOme14jctPFQpQRvgofV0sGUVmb/gXs34rsGnhnYhD+oV+Oz3LtXtRWyTCszq+qC1R
         yx0eDY1/2kiYvtG7bv7nbGZ3R437AA/ZYXU3xyihwwrblT7FnObVqy64E0AszpxoGRGT
         vUizoUdsvdVQW9iS3NZR7RZnr1UorZNPLl4hGnfTlHDktxleX0pqetjlE3FmTjUppos8
         AEEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id r16si67069iot.3.2020.03.17.06.14.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 06:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 48hYY83BzFz9sPR; Wed, 18 Mar 2020 00:14:36 +1100 (AEDT)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: 9451c79bc39e610882bdd12370f01af5004a3c4f
In-Reply-To: <20190920153951.25762-1-ilie.halip@gmail.com>
To: Ilie Halip <ilie.halip@gmail.com>
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: Ilie Halip <ilie.halip@gmail.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>, Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] powerpc/pmac/smp: avoid unused-variable warnings
Message-Id: <48hYY83BzFz9sPR@ozlabs.org>
Date: Wed, 18 Mar 2020 00:14:36 +1100 (AEDT)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Fri, 2019-09-20 at 15:39:51 UTC, Ilie Halip wrote:
> When building with ppc64_defconfig, the compiler reports
> that these 2 variables are not used:
>     warning: unused variable 'core99_l2_cache' [-Wunused-variable]
>     warning: unused variable 'core99_l3_cache' [-Wunused-variable]
> 
> They are only used when CONFIG_PPC64 is not defined. Move
> them into a section which does the same macro check.
> 
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/9451c79bc39e610882bdd12370f01af5004a3c4f

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/48hYY83BzFz9sPR%40ozlabs.org.
