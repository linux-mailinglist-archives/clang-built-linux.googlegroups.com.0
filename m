Return-Path: <clang-built-linux+bncBDDZ5LVW4IHBBRVBT2EAMGQESVFAOXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 126793DD07D
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 08:29:27 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id p3-20020a0565121383b0290384997a48fcsf6282684lfa.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Aug 2021 23:29:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627885766; cv=pass;
        d=google.com; s=arc-20160816;
        b=nWz8i22/o56l1O1ZtkbXVLYrEoKQLKK8qdMYkzke3drfmS0w/Hu2hyUWeFt6RBGbjA
         AuxXQ/HDmPqJJvAV+GTDqk6JrsPMupYZEi3c0A5sAPya/NdUcrxnjX/J4dPmtlLCM/oa
         1Q4V7veuEMEgX8YS3lGttLFDEPj57H6Cquw4Rmqgp4XYg35lwvY6cELZWdP/sOXrN7f2
         HqDvJQyDF4iswcBYqIrf7NOmOIYzN/qT8ehcC5AlZ/da6AXtDGvemqvubJSVbxT9YrZl
         uziCSTJVL+hSF3H9q0l/NJS2Jx6pT7Rh3z/Rs78EYL8P3vCGdb0Gb06NO0E7IUrOpT83
         aeyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LqZjyyeVTqR0yzxjTuTK6BTHvd+uOpiMjAHwaPlhUH4=;
        b=icgTFtnrUJnnl2mEyz0vhFwbDGuShACGALJ+6EAsEHlKHmJk+HpV8Qpo+cAvku2Q6i
         TA8dCrte6BxyzxoeOnWCb/C+5k0uHrCLMHjCMOt6hBqwL/eQPimxBl6gciXCTgc4cQHC
         iWW8tnD6Ls2OpR3q6iClI8rkXxvMy+ST08SuYivvsNq1Hpw05lwnd3TypSS7XKoljl34
         k/oBAFf85yv4t3D7G8iKfSPhCKOv+Jj7IkRksQE+Rmv1zr0dp7aMOMtI/vmvHOVTtAa5
         RBWYsMTGQpAS+8+NO460ClhSrWhg3ngWrDrRx0+EUhxkHZ6DUrVpHFK1PG4kfbz4rpGz
         eZLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=CwYDZNIf;
       spf=pass (google.com: domain of krzysztof.kozlowski@canonical.com designates 185.125.188.120 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LqZjyyeVTqR0yzxjTuTK6BTHvd+uOpiMjAHwaPlhUH4=;
        b=C1ULD9OMb4kfB2hWcG7HFhBlsmm6iM0dkRiscK8AfpC/Am81+BAEgmzHiKXJyHNYvh
         05qPfQTl+a+sw/1Rf5UqML2zojkoKq3lE+WGMCeaZ/zz7VYPzQUzgzAAYaGhdAiXujcH
         DKdOOCdevY1NsyRfOCM7oVkmVS2fZCp9bPeKt9BNBauuJuTxdsFaz/4kOXsgLtcD8kxE
         ip+oFOjHG+Op2QDkzCOf8hQhiS7ISwAnkg20HHzHkgN+Jq3TbbA5fIrXmtJf6qAiknD8
         Zjhi8bbFV7PJ/Xiz4Qa/5UMNPAiCPtGj+RyECf9mnJpRFPxWTDcPk7E8z1JZ6JadLN2v
         PVPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LqZjyyeVTqR0yzxjTuTK6BTHvd+uOpiMjAHwaPlhUH4=;
        b=lcnX+0OTj+wxQH9nirVy8SXRT6UUiWj5hSdO/AH1cq5Di5WdlFxwsGI9J8SfL0mk5c
         5KUXR0Q0ovYotuHweovOU/8qvOgQdbsetl3Iuy3hBCqvTZw66aGONFD37eRKRUiPLCDb
         u+GYQdAyh5eKg5X8RRsI/6K0HOPE3RWz0jHkNv5aQeD9FdS1vBdoxNL0M6kXGd92Qpjo
         FbJpmRd96Zlz10B/G4m8PqDMdg5M6W0tPJxm1FeJmwgeQHGz3hd4FuP21k3ynx9vELOW
         mwVnjb2L6gvUDnrVwrvwmQLiOrjKOJIHCH5wkFE/yO9GZDKy4vUrTiBRN5l0FaIyeACH
         d3nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Dm5NZWhRnUiTeRR2yO/fvlLuFEK88gLV5Ma+gdvCwYMMRaaE2
	ep9ZV3DJEQZCJ5XHqu5Kucc=
X-Google-Smtp-Source: ABdhPJyL70ECxUbYOLl6PyQFIqlRqWq0ORPhsXBYcRv2+yBEL3YFq1/qdlLPvUCYwGmEairPj8NKqw==
X-Received: by 2002:ac2:4a7b:: with SMTP id q27mr654543lfp.518.1627885766637;
        Sun, 01 Aug 2021 23:29:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls347213lfi.2.gmail; Sun, 01 Aug
 2021 23:29:25 -0700 (PDT)
X-Received: by 2002:a05:6512:208d:: with SMTP id t13mr11209388lfr.492.1627885765661;
        Sun, 01 Aug 2021 23:29:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627885765; cv=none;
        d=google.com; s=arc-20160816;
        b=UD6FTyT8tPr53/rIhU8yKRg++U7usjAiYlIfIdph20lqT2lo7IOlK19gaCE1WTy9qs
         p34NC7eMgqYq4ztgoin2lt7ZFBMLfzYUkMxLSxJhAL8FgUjUY7s5ELzaHdT+TQKdOawk
         PlDNsFzO0VyvhKgzxVqMsEXnxdZQoCuHNmj1EKPug/6ZnzrqFYGYFKIsDMixTsctFrB2
         x0qteg273Kfxw2Cf6VWZm47S8iHQXdqUU1pXZ/XJ+Y2aONZCE6CSk28SUXzuqjEQXdKw
         obHC95lK0Sm6J9O3QDOUDu3aFQFaAPa2fgrNh6/RXx5jlQ7UD1/D+hqmDCvScB1+oc41
         1/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XlLun4+SMwQsZGUmPnqHoCI1+rRI6WRxO6oYbGRjtqk=;
        b=xhiF9O88wGPSZ6OWg2kF6pIYbHaKFaWCXip0c9jfT64nAEP0lHMIQKQ91cq2kQePIK
         pxy8SLpvwZzGtv5njXyrPEONYq3c+AYuwbuA9QhPOlD89t8Nm8Tg3UZzfBd0PBmFO8Qq
         sYhbf3VO0ASrgLAjX4r0vKxE5ZmmdkCsGsEFXgi7F7iq7El1fzTd9Ly/W/561hjvrfqs
         /WpU++j8uRVOaFTUpaJ3yhpLi0Hio+q0s6NfpjkAi8RxHq4xUE8ts7pOr5qGFUq312+B
         wn6fttpQTj+6WIBa129gXMp/Bts3x6V+o9ZBtSNN2IP5jc2nMOegsjINIdrDc40eo6Up
         l8FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=CwYDZNIf;
       spf=pass (google.com: domain of krzysztof.kozlowski@canonical.com designates 185.125.188.120 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from smtp-relay-canonical-0.canonical.com (smtp-relay-canonical-0.canonical.com. [185.125.188.120])
        by gmr-mx.google.com with ESMTPS id u9si128666lfs.9.2021.08.01.23.29.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 23:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzysztof.kozlowski@canonical.com designates 185.125.188.120 as permitted sender) client-ip=185.125.188.120;
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 7565B3F34E
	for <clang-built-linux@googlegroups.com>; Mon,  2 Aug 2021 06:29:24 +0000 (UTC)
Received: by mail-ej1-f70.google.com with SMTP id k21-20020a1709062a55b0290590e181cc34so3158741eje.3
        for <clang-built-linux@googlegroups.com>; Sun, 01 Aug 2021 23:29:24 -0700 (PDT)
X-Received: by 2002:a17:906:3048:: with SMTP id d8mr14268366ejd.534.1627885764214;
        Sun, 01 Aug 2021 23:29:24 -0700 (PDT)
X-Received: by 2002:a17:906:3048:: with SMTP id d8mr14268352ejd.534.1627885764030;
 Sun, 01 Aug 2021 23:29:24 -0700 (PDT)
MIME-Version: 1.0
References: <1584769729.679.1627868136620@localhost> <90abf79f-5706-592d-c067-fa3fb88a45f7@kernel.org>
In-Reply-To: <90abf79f-5706-592d-c067-fa3fb88a45f7@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date: Mon, 2 Aug 2021 08:29:13 +0200
Message-ID: <CA+Eumj7Xh41LNAp5Txwe9xW6CPDjd7ygRgaybFaZm5X2GMPJ2w@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - Build # 26 - Successful!
To: Nathan Chancellor <nathan@kernel.org>
Cc: ci_notify@linaro.org, tcwg-validation@linaro.org, 
	linaro-toolchain@lists.linaro.org, clang-built-linux@googlegroups.com, 
	arnd@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krzysztof.kozlowski@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canonical.com header.s=20210705 header.b=CwYDZNIf;       spf=pass
 (google.com: domain of krzysztof.kozlowski@canonical.com designates
 185.125.188.120 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On Mon, 2 Aug 2021 at 03:44, Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 8/1/2021 6:35 PM, ci_notify@linaro.org wrote:
> > Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
> >   - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
> >
> > Culprit:
> > <cut>
> > commit 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
> > Author: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> > Date:   Thu Jul 29 12:40:19 2021 +0200
> >
> >      nfc: fdp: constify several pointers
> >
> >      Several functions do not modify pointed data so arguments and local
> >      variables can be const for correctness and safety.  This allows also
> >      making file-scope nci_core_get_config_otp_ram_version array const.
> >
> >      Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> >      Signed-off-by: David S. Miller <davem@davemloft.net>
> > </cut>
> >
> > Results regressed to (for first_bad == 3d463dd5023b5a58b3c37207d65eeb5acbac2be3)
> > # reset_artifacts:
> > -10
> > # build_abe binutils:
> > -9
> > # build_llvm:
> > -5
> > # build_abe qemu:
> > -2
> > # linux_n_obj:
> > 21802
> > # First few build errors in logs:
> > # 00:03:45 drivers/nfc/fdp/fdp.c:116:60: error: passing 'const char *' to parameter of type '__u8 *' (aka 'unsigned char *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
> > # 00:03:45 make[3]: *** [drivers/nfc/fdp/fdp.o] Error 1
> > # 00:03:49 make[2]: *** [drivers/nfc/fdp] Error 2
> > # 00:04:01 make[1]: *** [drivers/nfc] Error 2
> > # 00:09:25 make: *** [drivers] Error 2
>
> I believe this should be fixed with the following series, which is now
> in netdev and should be in the next -next version:
>
> https://lore.kernel.org/r/20210730144202.255890-1-krzysztof.kozlowski@canonical.com/

Correct, the issue is already fixed.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BEumj7Xh41LNAp5Txwe9xW6CPDjd7ygRgaybFaZm5X2GMPJ2w%40mail.gmail.com.
