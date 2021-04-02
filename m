Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBR6FT2BQMGQE5QRYW4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DF990353162
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Apr 2021 01:03:36 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id gy8sf5954404qvb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 16:03:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617404616; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZFEzBPyh03k9/+lfIT0xI6zNeGdVPvfopd+lReQEWNllGWJYIbqHRtmDEgUWNgKZPH
         EZ2VVsh+HwvFOzlFnpQX48hxr0ou3x3SahG7MyyGqLOzdMhd61azPNy983F0rh4MwD8Y
         W8Vot58nHFTBeHswNLqAA1dtZtziF3TwzBbkjKu7Gv6cWQ8UtkEPIKyRu1MO4mAlNf+L
         uzLzkCPRVwnrd/hc+LWa3dOCI66mVTjX+oHpWUhh3ddrjZL3w39BQhBZyHNlgUc4SS6b
         98wfovgMhyUgIwkk7IQq8itU6R6JAg5P9bHqPHylbodZse7JTvHJDZJuZCT6+hDSGYZD
         GDlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4QX24AHg8d6y7SkNIro3B7htGhiYUMBUL3pW1d4/+tM=;
        b=kXTioupwtxAoJ1OwnzL+z3k0GB6sQv2FvcIuK6rpG6JYXepMogQOT1gUtqS8j8az58
         tk+ogO17IYuwhixUpROJd2LeYHeZbn85ORaCJJGsbzB1UVejlVBipdWwO0jy0ZANfuAL
         GiLE1oEP6TqbL1fpCdIx4JwP97RIH2n90nxCpYpQnfVtabyqziY9AHVAH68HQzv6OJ5X
         Jm74vQLHuVF70SIRAMAGmouTJP2xWg0FKF3pVSSTGZjTnYxYD9pZElCgPue6i15aKkYF
         m/153aZMN8RV7NMAnYK+tftTHcExnU/dCZiAm+EHcszHUU6mNg666oHkmvtDB7qDZX1S
         pVbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D5+pmHKI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4QX24AHg8d6y7SkNIro3B7htGhiYUMBUL3pW1d4/+tM=;
        b=T1t9lRlU/wRcqSYrgeN+9Zxpyoeci2ktXcrjWTDAie+2+Bbqmkz3UJ9+O/Vt3GJIu0
         0AVHigEBqeKllacKD45fTc6mjxlzdGlSvKAXctQOBRU9LjPkxFb0t1engFhnrLExOv0h
         wSgfS9G1kSsjLkaQywgen9cGmb9b27HhmJrYF6VMpcfuurahgD0NNIk0IHvo0MPXxpBQ
         ItnNjT6ZunPO8xQMaSD/3ua22SSHf7eOp8p8H+KtucNI+DzahQOhSZMMwBfVtdcKgRtR
         ZoIYom6DuEEup1MStdHeSxOMiH+gtNR4qy25bclzz+IlhV/EQIlMq4ntPEL5vtUQCbiK
         xTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4QX24AHg8d6y7SkNIro3B7htGhiYUMBUL3pW1d4/+tM=;
        b=cnVJNbsNBfPpbOvfp0Le4kx0W0U9c1gCPeQ6MfmJUD9go0/TLS9kD0H+h4SO5f5F+n
         q4RpdYXCqI9B1A6WfBxoNuYv0rZtgxYBanacHmUuTyeogjijil92gy6H4+QGRQ8/5ePb
         Vf9yhrcE6I/3SL7wZdm/hOfJe51SuVHaTZ5nnT0ZxG+PXPk8wJg2zBqDw3WFZ5zczWNz
         bFxzQEIhFfDiF5DawoP/OflAvJVEUqYS0ckdMIYXScA030g7EZg2dr9eGyx/Tbzl2mwd
         TTmTlF8Qrdg7KyD+Qdu1o/eqUGbeA9D/yL/SkmfQ0BEnJ9it+SpUSVULFI5hgwIanUdf
         xcPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lytXouiphj8gEhKjVRXdQyciYi+Vvz2dpqmS7mWnX3Lt/nvPc
	KIGdXWinPVu8OYonsEKbops=
X-Google-Smtp-Source: ABdhPJx4SQTYRVAx/ut7hMArh1br/bQ/mB7d0yRkK0Xi4cH4cDoAu2C+kK3e82wD8Tl+peob9l+UVg==
X-Received: by 2002:a05:6214:13cb:: with SMTP id cg11mr4790231qvb.22.1617404615900;
        Fri, 02 Apr 2021 16:03:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12c4:: with SMTP id e4ls5690900qkl.4.gmail; Fri, 02
 Apr 2021 16:03:35 -0700 (PDT)
X-Received: by 2002:a37:6592:: with SMTP id z140mr15524688qkb.464.1617404615374;
        Fri, 02 Apr 2021 16:03:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617404615; cv=none;
        d=google.com; s=arc-20160816;
        b=Zpdx91wiMcRDgWl/1ilaGEkQo59vCsR1EQq05hRpJDmFFAPfplksrn60cWVX+NR090
         leO5vOQPQXgkJ60lwqLOICzbFn7oaokhS0oXtouEQRAllMtLLkmBoYIaqMUwUukOUPpr
         x+ACBEl4Vfvl6St88ehQkqof0NWGG06GC9ePOgMzGep1RitqLFB+SgCdBiJl/z9506vQ
         EFcQHpVQ0wCTJL1AdSclSEQFgGyTzwhojCMc2dnqlpY8p0A3xRnIC/n6mpMOHR94CtHR
         XbGaT9LXHgmKEuWPCFW2+ENc2RYn7IUz8Mj59+OpA5KEQ/U/iG9b0KC1/FqNuVGCcrvc
         L04Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Hs160JcIaze++UWn2DCNTyTmt4S1iRCncscC+X5/faM=;
        b=B3iQqcyL5FlFfap+/d041QfcwGk6w+AHnCWTy0TrvJyamb89KIUKYAR1P3hA6dta7Z
         4QA/UClDrhzWxOhrXrGDVx9rmw9ZOd2HKvbt3XzVhAb3fFWB+WrVhKsPJUBi6CmkD8CU
         mLe8P8EAbLszNmEtHueGOuz2pw0ZvAKEL0LB3G6yP25OlQiO8Ugzk+zhZMTvJ+WcmNmL
         aK80OLgpaJXjAHH5Am5KXoVgQjELhwH+2svNejxS0oti+rTk2btttIz5MAJjA+kE4wvn
         pgNcTKZYFQIW6Brf8WylVs/3UxRm2Iq5vG3L4nCk1Do9TO3t4vfKdu/CXlzRa/1ciY6g
         JxYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D5+pmHKI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id k1si1830876qtg.2.2021.04.02.16.03.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 16:03:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id b17so698737pgh.7
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 16:03:35 -0700 (PDT)
X-Received: by 2002:a62:5f85:0:b029:204:99fa:3371 with SMTP id t127-20020a625f850000b029020499fa3371mr13926848pfb.1.1617404614420;
        Fri, 02 Apr 2021 16:03:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p5sm2677202pjf.30.2021.04.02.16.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Apr 2021 16:03:33 -0700 (PDT)
Date: Fri, 2 Apr 2021 16:03:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <202104021555.08B883C7@keescook>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=D5+pmHKI;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Apr 02, 2021 at 12:52:41PM -0700, Nathan Chancellor wrote:
> Hi all,
> 
> I am testing the Clang Control Flow Integrity series that is being
> worked on right now [1] and I encounter a violation in the Infiniband
> sysfs core (drivers/infiniband/core/sysfs.c) on an arm64 server with mlx5:
> 
> $ cat /sys/class/infiniband/mlx5_bond_0/ports/1/hw_counters/lifespan
> 12
> 
> $ echo "10" | sudo tee /sys/class/infiniband/mlx5_bond_0/ports/1/hw_counters/lifespan
> 10
> 
> $ sudo dmesg
> [64198.670342] ------------[ cut here ]------------
> [64198.670362] CFI failure (target: show_stats_lifespan+0x0/0x8 [ib_core]):
> [64198.671291] WARNING: CPU: 20 PID: 15786 at kernel/cfi.c:29 __ubsan_handle_cfi_check_fail+0x58/0x60
> [64198.671336] Modules linked in: binfmt_misc nls_iso8859_1 dm_multipath
> scsi_dh_rdac scsi_dh_emc scsi_dh_alua ast drm_vram_helper drm_ttm_helper
> ttm aes_ce_blk crypto_simd drm_kms_helper cryptd cec rc_core
> aes_ce_cipher crct10dif_ce sysimgblt ghash_ce syscopyarea sysfillrect
> acpi_ipmi sha2_ce fb_sys_fops ipmi_ssif sha256_arm64 ipmi_devintf
> sha1_ce drm efi_pstore sbsa_gwdt tcp_westwood evbug ipmi_msghandler
> cppc_cpufreq xgene_hwmon ib_iser rdma_cm iw_cm ib_cm iscsi_tcp
> libiscsi_tcp libiscsi scsi_transport_iscsi bonding ip_tables x_tables
> autofs4 raid10 raid456 libcrc32c async_raid6_recov async_pq raid6_pq
> async_xor xor xor_neon async_memcpy async_tx raid1 raid0 multipath
> linear mlx5_ib ib_uverbs ib_core mlx5_core mlxfw igb i2c_algo_bit tls
> i2c_xgene_slimpro ahci_platform gpio_dwapb
> [64198.671958] CPU: 20 PID: 15786 Comm: cat Tainted: G        W         5.12.0-rc5+ #5
> [64198.671980] Hardware name: Lenovo HR330A            7X33CTO1WW    /HR350A     , BIOS HVE104D-1.02 03/08/2019
> [64198.671993] pstate: 60400005 (nZCv daif +PAN -UAO -TCO BTYPE=--)
> [64198.672016] pc : __ubsan_handle_cfi_check_fail+0x58/0x60
> [64198.672036] lr : __ubsan_handle_cfi_check_fail+0x58/0x60
> [64198.672054] sp : ffff800014ea3b50
> [64198.672065] x29: ffff800014ea3b50 x28: ffff80001122da60 
> [64198.672095] x27: ffff80001122ad80 x26: ffff800011233088 
> [64198.672122] x25: ffff000801821a78 x24: ffff000820cda200 
> [64198.672148] x23: ffff800009aa9f60 x22: ffff800009a66000 
> [64198.672173] x21: 7dac81f92e1d85cf x20: ffff800009abddd0 
> [64198.672198] x19: ffff800009a69fd8 x18: ffffffffffffffff 
> [64198.672223] x17: 0000000000000000 x16: 0000000000000000 
> [64198.672250] x15: 0000000000000004 x14: 0000000000001fff 
> [64198.672277] x13: ffff8000121412a8 x12: 0000000000000003 
> [64198.672303] x11: 0000000000000000 x10: 0000000000000027 
> [64198.672329] x9 : 4568e3af67e9f000 x8 : 4568e3af67e9f000 
> [64198.672356] x7 : 6e6170736566696c x6 : ffff8000124699c9 
> [64198.672381] x5 : 0000000000000000 x4 : 0000000000000001 
> [64198.672406] x3 : 0000000000000000 x2 : 0000000000000000 
> [64198.672431] x1 : ffff8000119b905d x0 : 000000000000003c 
> [64198.672457] Call trace:
> [64198.672469]  __ubsan_handle_cfi_check_fail+0x58/0x60
> [64198.672489]  __cfi_check_fail+0x3c/0x44 [ib_core]
> [64198.673362]  __cfi_check+0x2e78/0x31b0 [ib_core]
> [64198.674230]  port_attr_show+0x88/0x98 [ib_core]
> [64198.675098]  sysfs_kf_seq_show+0xc4/0x160
> [64198.675131]  kernfs_seq_show+0x5c/0xa4
> [64198.675157]  seq_read_iter+0x178/0x60c
> [64198.675176]  kernfs_fop_read_iter+0x78/0x1fc
> [64198.675202]  vfs_read+0x2d0/0x34c
> [64198.675220]  ksys_read+0x80/0xec
> [64198.675237]  __arm64_sys_read+0x28/0x34
> [64198.675253]  el0_svc_common.llvm.13467398108545334879+0xbc/0x1f0
> [64198.675277]  do_el0_svc+0x30/0xa4
> [64198.675293]  el0_svc+0x30/0xb0
> [64198.675314]  el0_sync_handler+0x84/0xe4
> [64198.675333]  el0_sync+0x174/0x180
> [64198.675351] ---[ end trace a253e31759778f5c ]---
> [64216.024673] ------------[ cut here ]------------
> [64216.024678] CFI failure (target: set_stats_lifespan+0x0/0x8 [ib_core]):
> [64216.024824] WARNING: CPU: 3 PID: 15816 at kernel/cfi.c:29 __ubsan_handle_cfi_check_fail+0x58/0x60
> [64216.024832] Modules linked in: binfmt_misc nls_iso8859_1 dm_multipath
> scsi_dh_rdac scsi_dh_emc scsi_dh_alua ast drm_vram_helper drm_ttm_helper
> ttm aes_ce_blk crypto_simd drm_kms_helper cryptd cec rc_core
> aes_ce_cipher crct10dif_ce sysimgblt ghash_ce syscopyarea sysfillrect
> acpi_ipmi sha2_ce fb_sys_fops ipmi_ssif sha256_arm64 ipmi_devintf
> sha1_ce drm efi_pstore sbsa_gwdt tcp_westwood evbug ipmi_msghandler
> cppc_cpufreq xgene_hwmon ib_iser rdma_cm iw_cm ib_cm iscsi_tcp
> libiscsi_tcp libiscsi scsi_transport_iscsi bonding ip_tables x_tables
> autofs4 raid10 raid456 libcrc32c async_raid6_recov async_pq raid6_pq
> async_xor xor xor_neon async_memcpy async_tx raid1 raid0 multipath
> linear mlx5_ib ib_uverbs ib_core mlx5_core mlxfw igb i2c_algo_bit tls
> i2c_xgene_slimpro ahci_platform gpio_dwapb
> [64216.024922] CPU: 3 PID: 15816 Comm: tee Tainted: G        W         5.12.0-rc5+ #5
> [64216.024925] Hardware name: Lenovo HR330A            7X33CTO1WW    /HR350A     , BIOS HVE104D-1.02 03/08/2019
> [64216.024927] pstate: 60400005 (nZCv daif +PAN -UAO -TCO BTYPE=--)
> [64216.024931] pc : __ubsan_handle_cfi_check_fail+0x58/0x60
> [64216.024933] lr : __ubsan_handle_cfi_check_fail+0x58/0x60
> [64216.024936] sp : ffff800015433bf0
> [64216.024938] x29: ffff800015433bf0 x28: ffff000808a00000 
> [64216.024942] x27: 0000000000000000 x26: 0000000000000000 
> [64216.024945] x25: ffff0008062e5000 x24: ffff000808a00000 
> [64216.024949] x23: ffff000825ba9600 x22: ffff800009a66000 
> [64216.024952] x21: 6d3b10b5d517da5b x20: ffff800009abddf0 
> [64216.024956] x19: ffff800009a69fb8 x18: ffffffffffffffff 
> [64216.024959] x17: 0000000000000000 x16: 0000000000000000 
> [64216.024962] x15: 0000000000000004 x14: 0000000000001fff 
> [64216.024966] x13: ffff8000121412a8 x12: 0000000000000003 
> [64216.024969] x11: 0000000000000000 x10: 0000000000000027 
> [64216.024973] x9 : 4568e3af67e9f000 x8 : 4568e3af67e9f000 
> [64216.024976] x7 : 2b6e617073656669 x6 : ffff8000124699c8 
> [64216.024979] x5 : 0000000000000000 x4 : 0000000000000001 
> [64216.024983] x3 : 0000000000000000 x2 : 0000000000000000 
> [64216.024986] x1 : ffff8000119b905d x0 : 000000000000003b 
> [64216.024990] Call trace:
> [64216.024992]  __ubsan_handle_cfi_check_fail+0x58/0x60
> [64216.024995]  __cfi_check_fail+0x3c/0x44 [ib_core]
> [64216.025133]  __cfi_check+0x2e78/0x31b0 [ib_core]
> [64216.025277]  port_attr_store+0x5c/0x90 [ib_core]
> [64216.025422]  sysfs_kf_write+0x70/0xd0
> [64216.025428]  kernfs_fop_write_iter+0x110/0x1dc
> [64216.025431]  vfs_write+0x364/0x46c
> [64216.025435]  ksys_write+0x80/0xec
> [64216.025437]  __arm64_sys_write+0x28/0x34
> [64216.025439]  el0_svc_common.llvm.13467398108545334879+0xbc/0x1f0
> [64216.025443]  do_el0_svc+0x30/0xa4
> [64216.025445]  el0_svc+0x30/0xb0
> [64216.025450]  el0_sync_handler+0x84/0xe4
> [64216.025452]  el0_sync+0x174/0x180
> [64216.025455] ---[ end trace a253e31759778f5d ]---
> 
> According to the call trace, sysfs_kf_seq_show() calls port_attr_show()
> because that is the show() member of port_sysfs_ops and port_attr_show()
> calls show_stats_lifespan() via an indirect call (port_attr->show()).
> The show() member of 'struct port_attribute' is:
> 
> ssize_t (*show)(struct ib_port *, struct port_attribute *, char *buf);
> 
> but show_stats_lifespan() is defined to be the show() member of
> 'struct hw_stats_attribute', which is of type
> 
> ssize_t (*show)(struct kobject *kobj, struct attribute *attr, char *buf);
> 
> so there is a mismatch and the CFI code warns about it. The store
> functions have the same issue as you can see above.
> 
> I have been trying to work my way through the code in order to suggest a
> solution and I am getting lost hence my report. I think the issue is
> that the hw_counters folder in sysfs is a 'struct attribute_group',
> which gets added underneath the 'struct ib_ports' kobj in add_port(),
> meaning that it inherits the sysfs ops from the 'struct ib_ports' kobj,
> which are port_attr_{show,store}(). Initially, I though that
> 'struct hw_stats_attribute' could just be converted over to
> 'struct port_attribute' but it seems 'struct hw_stats_attribute' does
> not have to be used underneath 'struct ib_port', it can be underneath
> 'struct ib_device', where 'struct port_attribute' is not going to be
> relevant. It seems to me that the hw_counters 'struct attribute_group'
> should probably be its own kobj within both of these structures so they
> can have their own sysfs ops (unless there is some other way to do this
> that I am missing).

Owwww. Yeah, I agree with your evaluation.

> I would appreciate someone else taking a look and seeing if I am off
> base or if there is an easier way to solve this.

So, it seems that the reason for a custom kobj_type here is to use the
.release callback. That can't be done without also specifying the ops,
but the "default" sysfs ops aren't exported. Most sysfs users aren't
allocating their attributes (they're static .data). (Though if this
becomes a common pattern, perhaps we should export the default sysfs ops
for users to override the .release callback without needing to specify a
show wrapper.)

So, I think, the solution is below. This hasn't been runtime tested. It
basically removes the ib_port callback prototype and leaves everything
as kobject/attr. The callbacks then do their own container_of() calls.


diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index b8abb30f80df..2c68bb8c6e08 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -67,14 +67,11 @@ struct ib_port {
 
 struct port_attribute {
 	struct attribute attr;
-	ssize_t (*show)(struct ib_port *, struct port_attribute *, char *buf);
-	ssize_t (*store)(struct ib_port *, struct port_attribute *,
+	ssize_t (*show)(struct kobject *, struct attribute *, char *buf);
+	ssize_t (*store)(struct kobject *, struct attribute *,
 			 const char *buf, size_t count);
 };
 
-#define PORT_ATTR(_name, _mode, _show, _store) \
-struct port_attribute port_attr_##_name = __ATTR(_name, _mode, _show, _store)
-
 #define PORT_ATTR_RO(_name) \
 struct port_attribute port_attr_##_name = __ATTR_RO(_name)
 
@@ -102,12 +99,11 @@ static ssize_t port_attr_show(struct kobject *kobj,
 {
 	struct port_attribute *port_attr =
 		container_of(attr, struct port_attribute, attr);
-	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 
 	if (!port_attr->show)
 		return -EIO;
 
-	return port_attr->show(p, port_attr, buf);
+	return port_attr->show(kobj, attr, buf);
 }
 
 static ssize_t port_attr_store(struct kobject *kobj,
@@ -116,11 +112,10 @@ static ssize_t port_attr_store(struct kobject *kobj,
 {
 	struct port_attribute *port_attr =
 		container_of(attr, struct port_attribute, attr);
-	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 
 	if (!port_attr->store)
 		return -EIO;
-	return port_attr->store(p, port_attr, buf, count);
+	return port_attr->store(kobj, attr, buf, count);
 }
 
 static const struct sysfs_ops port_sysfs_ops = {
@@ -133,22 +128,21 @@ static ssize_t gid_attr_show(struct kobject *kobj,
 {
 	struct port_attribute *port_attr =
 		container_of(attr, struct port_attribute, attr);
-	struct ib_port *p = container_of(kobj, struct gid_attr_group,
-					 kobj)->port;
 
 	if (!port_attr->show)
 		return -EIO;
 
-	return port_attr->show(p, port_attr, buf);
+	return port_attr->show(kobj, attr, buf);
 }
 
 static const struct sysfs_ops gid_attr_sysfs_ops = {
 	.show = gid_attr_show
 };
 
-static ssize_t state_show(struct ib_port *p, struct port_attribute *unused,
+static ssize_t state_show(struct kobject *kobj, struct attribute *unused,
 			  char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct ib_port_attr attr;
 	ssize_t ret;
 
@@ -172,9 +166,10 @@ static ssize_t state_show(struct ib_port *p, struct port_attribute *unused,
 				  "UNKNOWN");
 }
 
-static ssize_t lid_show(struct ib_port *p, struct port_attribute *unused,
+static ssize_t lid_show(struct kobject *kobj, struct attribute *unused,
 			char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct ib_port_attr attr;
 	ssize_t ret;
 
@@ -185,10 +180,11 @@ static ssize_t lid_show(struct ib_port *p, struct port_attribute *unused,
 	return sysfs_emit(buf, "0x%x\n", attr.lid);
 }
 
-static ssize_t lid_mask_count_show(struct ib_port *p,
-				   struct port_attribute *unused,
+static ssize_t lid_mask_count_show(struct kobject *kobj,
+				   struct attribute *unused,
 				   char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct ib_port_attr attr;
 	ssize_t ret;
 
@@ -199,9 +195,10 @@ static ssize_t lid_mask_count_show(struct ib_port *p,
 	return sysfs_emit(buf, "%d\n", attr.lmc);
 }
 
-static ssize_t sm_lid_show(struct ib_port *p, struct port_attribute *unused,
+static ssize_t sm_lid_show(struct kobject *kobj, struct attribute *unused,
 			   char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct ib_port_attr attr;
 	ssize_t ret;
 
@@ -212,9 +209,10 @@ static ssize_t sm_lid_show(struct ib_port *p, struct port_attribute *unused,
 	return sysfs_emit(buf, "0x%x\n", attr.sm_lid);
 }
 
-static ssize_t sm_sl_show(struct ib_port *p, struct port_attribute *unused,
+static ssize_t sm_sl_show(struct kobject *kobj, struct attribute *unused,
 			  char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct ib_port_attr attr;
 	ssize_t ret;
 
@@ -225,9 +223,10 @@ static ssize_t sm_sl_show(struct ib_port *p, struct port_attribute *unused,
 	return sysfs_emit(buf, "%d\n", attr.sm_sl);
 }
 
-static ssize_t cap_mask_show(struct ib_port *p, struct port_attribute *unused,
+static ssize_t cap_mask_show(struct kobject *kobj, struct attribute *unused,
 			     char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct ib_port_attr attr;
 	ssize_t ret;
 
@@ -238,9 +237,10 @@ static ssize_t cap_mask_show(struct ib_port *p, struct port_attribute *unused,
 	return sysfs_emit(buf, "0x%08x\n", attr.port_cap_flags);
 }
 
-static ssize_t rate_show(struct ib_port *p, struct port_attribute *unused,
+static ssize_t rate_show(struct kobject *kobj, struct attribute *unused,
 			 char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct ib_port_attr attr;
 	char *speed = "";
 	int rate;		/* in deci-Gb/sec */
@@ -313,9 +313,10 @@ static const char *phys_state_to_str(enum ib_port_phys_state phys_state)
 	return "<unknown>";
 }
 
-static ssize_t phys_state_show(struct ib_port *p, struct port_attribute *unused,
+static ssize_t phys_state_show(struct kobject *kobj, struct attribute *unused,
 			       char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct ib_port_attr attr;
 
 	ssize_t ret;
@@ -328,9 +329,10 @@ static ssize_t phys_state_show(struct ib_port *p, struct port_attribute *unused,
 			  phys_state_to_str(attr.phys_state));
 }
 
-static ssize_t link_layer_show(struct ib_port *p, struct port_attribute *unused,
+static ssize_t link_layer_show(struct kobject *kobj, struct attribute *unused,
 			       char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	const char *output;
 
 	switch (rdma_port_get_link_layer(p->ibdev, p->port_num)) {
@@ -391,11 +393,9 @@ static ssize_t print_gid_type(const struct ib_gid_attr *gid_attr, char *buf)
 }
 
 static ssize_t _show_port_gid_attr(
-	struct ib_port *p, struct port_attribute *attr, char *buf,
+	struct ib_port *p, struct port_table_attribute *tab_attr, char *buf,
 	ssize_t (*print)(const struct ib_gid_attr *gid_attr, char *buf))
 {
-	struct port_table_attribute *tab_attr =
-		container_of(attr, struct port_table_attribute, attr);
 	const struct ib_gid_attr *gid_attr;
 	ssize_t ret;
 
@@ -409,11 +409,12 @@ static ssize_t _show_port_gid_attr(
 	return ret;
 }
 
-static ssize_t show_port_gid(struct ib_port *p, struct port_attribute *attr,
+static ssize_t show_port_gid(struct kobject *kobj, struct attribute *attr,
 			     char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct port_table_attribute *tab_attr =
-		container_of(attr, struct port_table_attribute, attr);
+		container_of(attr, struct port_table_attribute, attr.attr);
 	const struct ib_gid_attr *gid_attr;
 	int len;
 
@@ -438,24 +439,31 @@ static ssize_t show_port_gid(struct ib_port *p, struct port_attribute *attr,
 	return len;
 }
 
-static ssize_t show_port_gid_attr_ndev(struct ib_port *p,
-				       struct port_attribute *attr, char *buf)
+static ssize_t show_port_gid_attr_ndev(struct kobject *kobj,
+				       struct attribute *attr, char *buf)
 {
-	return _show_port_gid_attr(p, attr, buf, print_ndev);
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
+	struct port_table_attribute *tab_attr =
+		container_of(attr, struct port_table_attribute, attr.attr);
+	return _show_port_gid_attr(p, tab_attr, buf, print_ndev);
 }
 
-static ssize_t show_port_gid_attr_gid_type(struct ib_port *p,
-					   struct port_attribute *attr,
+static ssize_t show_port_gid_attr_gid_type(struct kobject *kobj,
+					   struct attribute *attr,
 					   char *buf)
 {
-	return _show_port_gid_attr(p, attr, buf, print_gid_type);
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
+	struct port_table_attribute *tab_attr =
+		container_of(attr, struct port_table_attribute, attr.attr);
+	return _show_port_gid_attr(p, tab_attr, buf, print_gid_type);
 }
 
-static ssize_t show_port_pkey(struct ib_port *p, struct port_attribute *attr,
+static ssize_t show_port_pkey(struct kobject *kobj, struct attribute *attr,
 			      char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct port_table_attribute *tab_attr =
-		container_of(attr, struct port_table_attribute, attr);
+		container_of(attr, struct port_table_attribute, attr.attr);
 	u16 pkey;
 	int ret;
 
@@ -528,11 +536,12 @@ static int get_perf_mad(struct ib_device *dev, int port_num, __be16 attr,
 	return ret;
 }
 
-static ssize_t show_pma_counter(struct ib_port *p, struct port_attribute *attr,
+static ssize_t show_pma_counter(struct kobject *kobj, struct attribute *attr,
 				char *buf)
 {
+	struct ib_port *p = container_of(kobj, struct ib_port, kobj);
 	struct port_table_attribute *tab_attr =
-		container_of(attr, struct port_table_attribute, attr);
+		container_of(attr, struct port_table_attribute, attr.attr);
 	int offset = tab_attr->index & 0xffff;
 	int width  = (tab_attr->index >> 16) & 0xff;
 	int ret;
@@ -745,8 +754,8 @@ static struct kobj_type gid_attr_type = {
 };
 
 static struct attribute **
-alloc_group_attrs(ssize_t (*show)(struct ib_port *,
-				  struct port_attribute *, char *buf),
+alloc_group_attrs(ssize_t (*show)(struct kobject *,
+				  struct attribute *, char *buf),
 		  int len)
 {
 	struct attribute **tab_attr;

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104021555.08B883C7%40keescook.
