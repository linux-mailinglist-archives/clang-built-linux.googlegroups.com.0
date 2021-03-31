Return-Path: <clang-built-linux+bncBAABBDMYR6BQMGQEXYYM6GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB2434F5C8
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 03:10:38 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id h17sf34457uax.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 18:10:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617153037; cv=pass;
        d=google.com; s=arc-20160816;
        b=lwwcwgJHqZ4/HpqyB/XwxOD0YfjhC21VVs80yGLKvbxu4UhBaakVwHjUeGSIJv8Xxi
         oKuASmr8GcM63BKYLnMq1x14vNqEjD4h0+l7bzz+/kyiBZNI2uFF64HJA4KZrXWIVRRz
         VJRUHVFZVsnoRznbAENQoD9WdYgM1fRRHjsBWFArbQVhBTHu+EQ6vZGHnh5Q3duopaju
         EC5ZoXj/+tjMOan8Fla9YPWwoTTFKlBkP1SODsQzXxv0Ot/6nS9MvyIfMQimOcfPHvmj
         jrAPpZZdnlbEiZEzx5gLUiwvRPjl6yy75E75dFApTukK+kQQUQDO9qsJkOO3gB+tkjo8
         Bw8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=I5gM6lJESdFdlpeKH+vgF/bahG7fR2eF2+LTaoj/kkU=;
        b=wLt8GPhg4JkGBRmXjwSGrh6znteif1E75q2x5BHbPKttO6SB+z7nJDBrJSmnuIZ8tU
         rGLsY54Zt2Rc/S6DftMZqgobY8Gqb9qyzsLhTOEofiqBVMjq+7mQW+g8TQOc6jOttorP
         mnWP+YmIFdDNB7OASliXACjcirobv1JPXTWNLKwuaw3pk/o593YlIsZpojxfCrs2dpZD
         HdpQO3oR2GktCVdJF1sVsP2B0seJ9waNUStcPx1lENZTqBnQVXq8oT53CzBUnn8qzpcH
         SToWEJkN1QeemnsvOnz9pODYzJoBhZEAOU9E092XuzOe1m8bij4oORFIy0CXtI3UZAHH
         dRtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I5gM6lJESdFdlpeKH+vgF/bahG7fR2eF2+LTaoj/kkU=;
        b=PbIBGKXT6hc2QUA9XzTJRQRKsPCpSCnectWLjvAkqe5WnEKeBg0dmlkZ4GU/Pe+UUf
         tzsMB1WTCtvYJCykeYFWN5m2GCdTRyLJaNAtgRk9ySv/vi1NAPikbkVpEOwWeJQPdpwM
         +hWBMB7tBqvlUyBFmn0YuEe9e4+590Mj6exJYN++3ApPkVx1NliY+GjfYcn8ofc0QvyL
         iQ/Gd9dGyERHWBrv4yQdIhihCAuMPyVdEw3QkicRErlZ1Rgx8rM4z/wU768B8KZwCAcR
         O2ib0QVJ+7w14cKuePDrPVaEh8ZzKwqTj6R6Le2A+93WggWGLsgRa3yqBBPdozwyc4GT
         k2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I5gM6lJESdFdlpeKH+vgF/bahG7fR2eF2+LTaoj/kkU=;
        b=fNl6UzW4ii5a5nEfFafONr6q8d9tBoOlHTzk+Rfs4tXB6FDKAe3zkT/xcODEjNc0y7
         1cSh/8fZUnwJQOaM3HDtoHCS66YEfyjePW06+u/7kbTe3kZlv3mL7pFy+Dl9tOlBj3lU
         4c64pwYETsoRqOgNmf9klo9l4q00KV6reg/KUoRBBE2HcWkx0rEHD6MYQkHGecpXsWMm
         N/yPeeONG0HsS4jur7zyYwr3qFBxDGwvVcuIyxQnR7jVCl5Ml8CeDxMHIon9CfL3UpaC
         EnyKVY+Mewmqk/rDH91gsUGAl7lOeN4vRdCPVCjYBZDAM90BeBYuTwCCKuIODDCVN2fl
         IZHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307O6E7fZfBUsKgKma+7152YiYs1rvgxTAVwPyNJCnsi8wjCi/7
	WISkE27tER+CuF70y/2P9LA=
X-Google-Smtp-Source: ABdhPJwdacxk62j8rlePa7VG2ufj2qmVHAvqykyWRgUgnMxT4uuUazMEQ8XyMKhkpAasAVmfoCrbew==
X-Received: by 2002:ac5:c3c4:: with SMTP id t4mr435445vkk.13.1617153037324;
        Tue, 30 Mar 2021 18:10:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:31c4:: with SMTP id x187ls36646vkx.9.gmail; Tue, 30 Mar
 2021 18:10:36 -0700 (PDT)
X-Received: by 2002:ac5:c2cd:: with SMTP id i13mr511279vkk.1.1617153036802;
        Tue, 30 Mar 2021 18:10:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617153036; cv=none;
        d=google.com; s=arc-20160816;
        b=PsqW7yq2FhxRroVv9ZEFF502dLtSb7ikBAVhxyeQIaXa8NvZymQi6ZaJEJPi3ZD9rE
         JtSG1/V7OqxHh2IPtv6j4Of1YeWcds/6L9mGVg7669ATcpgKjoQarbcsqgXJomqnPzcm
         K9H2A1MbhKWcpJARC3uVc776II287xlXcXOkNetv+lJCBJ5Pd+dLe6JhyIx3XTCDK5/T
         HukKD7CWjOV+Vxhq45XRIAToWLEaphixJD4xSLZdthj0/eVyaHy5Hfn/ZjGNAI8mjHOT
         zqwVJBz5Mytcz/gfTS3MqzFeyernkY+LeuHhFzDw3DQaHg/2oP24httTqnQN5LCktut6
         dGsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from;
        bh=vz1q7cEE0axE/fOrbrPeVx0u+CZMBEzZPRtyA3qZ+fM=;
        b=oo4W3N0xVHgk8U7ySVYXbdKaRdQQHACBRWAot8EFSyFCTzi7qQbgkjQcFjt2MQ04Ol
         vt2x7n9YxrifgDiGGXd/ARgDFv1BDQ2ZrXodHIPcDOjXQqJNoBqZUzu0axFdbONgpQuu
         yt5k/7wQsdSWbSQArqM7VUJShrF+K8mLSCmZgooHg1CjCWczabuphG4Y2ouNw/Koaade
         DFbHKkQYPZpW2bokVcTWLc+nCEjqmHsm9i3pPmBdQzYyYX8a9mDIujaCW3dK4pHs5jP/
         cK6d0diaySP1Li5G4GaYfiTuKKI4wWRoqAuGr+BoxcjarVwr3JzzS0kY/UBeK5ozudhe
         ACOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id i18si32007ual.1.2021.03.30.18.10.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 18:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4F97Xm1ZNmz9sjD; Wed, 31 Mar 2021 12:10:31 +1100 (AEDT)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor <nathan@kernel.org>
Cc: Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Benjamin Herrenschmidt <benh@kernel.crashing.org>
In-Reply-To: <20210302195013.2626335-1-nathan@kernel.org>
References: <20210302195013.2626335-1-nathan@kernel.org>
Subject: Re: [PATCH] powerpc/fadump: Mark fadump_calculate_reserve_size as __init
Message-Id: <161715296549.226945.14575193524004441168.b4-ty@ellerman.id.au>
Date: Wed, 31 Mar 2021 12:09:25 +1100
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
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

On Tue, 2 Mar 2021 12:50:14 -0700, Nathan Chancellor wrote:
> If fadump_calculate_reserve_size() is not inlined, there is a modpost
> warning:
> 
> WARNING: modpost: vmlinux.o(.text+0x5196c): Section mismatch in
> reference from the function fadump_calculate_reserve_size() to the
> function .init.text:parse_crashkernel()
> The function fadump_calculate_reserve_size() references
> the function __init parse_crashkernel().
> This is often because fadump_calculate_reserve_size lacks a __init
> annotation or the annotation of parse_crashkernel is wrong.
> 
> [...]

Applied to powerpc/next.

[1/1] powerpc/fadump: Mark fadump_calculate_reserve_size as __init
      https://git.kernel.org/powerpc/c/fbced1546eaaab57a32e56c974ea8acf10c6abd8

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161715296549.226945.14575193524004441168.b4-ty%40ellerman.id.au.
