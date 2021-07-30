Return-Path: <clang-built-linux+bncBDPZFQ463EFRB3N5RWEAMGQEUZOJN4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A623DB0FE
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 04:07:43 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id fa13-20020a17090af0cdb02901731757d1a2sf7977554pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 19:07:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627610861; cv=pass;
        d=google.com; s=arc-20160816;
        b=nxO4C6oreBNdzmoyCz92hsirAhcVIwqMBRCP8OpNaoRpl8skvXmaBJiuHcYQDCP7/q
         5Ny9PKF1ceNC44RyYumnvpJu4bzFjAj29ZE/MRCUKbcac/HLxCmVR3CTiP6FmXhkmxt4
         h81w5HHWpDAjyRrKjePjtIRzOjVH1Mwkk+zL9/rQCtxnyx4h1aDk/ZfL28hOwX/9TV/u
         e+rQSc2a4n6QemQgaFSq1dD1lAopqUBaJq974vEud5feYV9kYnDPr4qmkLBYdDRQmj24
         pGnrbqpXNOyFh9HlknP2n3BAc4xCjhe+mhLCbGb2oyqN+YE3XMNK+KP/7yygV0WGyUu7
         JiIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AAhsJ4PyQn3RMdJx4X3FFKPkXuG5j8TEO75SLGqfDTU=;
        b=N0kMPVMVymiBM2/9E/nNHyII0RON2ynQM+BdoNWbZITfeXCrIK3spNsw8UsG7zbO/q
         mz2SvCICEQ7KzadV8g0IM+T2y+1VDUxRXcC6m6HCZvkH/KmYCMRlrhs97qTqkBEoeNuJ
         hFhLI/JXXMCF53Sh3YSH4wBD5PDNcQtrrOksWqRAK+BaJYpiqyepYgiy3QdrOt2KncL+
         P9gxj3RnjWISPeoK2qQuv3lVySAZw/DoLUE2SrDgDOmSZXhQPqVrPEFs72FFN+k9MaMe
         04YzvVwAaqrjKQjCOjsh3l7YlVhOQ2cU9xQ0KFJDNf0TCJrv7QWzlv2nucx9v0YSEPBN
         iBKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UQ4StuH+;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAhsJ4PyQn3RMdJx4X3FFKPkXuG5j8TEO75SLGqfDTU=;
        b=X7Kk6Qsgtwkbo3Ah/+dcI/efuY8GKKAlHFf4POYQZWRaNoOQ+Z7aaRA5V85DRF1ktQ
         BjZN17RT13DroS6sAwgQaYPLjNkt0WEqPdMzpQmq7POOhPyUGwG8HVFBdHDOdxY7lFXP
         9T2uH2wFL5+2hgydS62+v3XP0fGd/6q43yFmr3Pll4F5t5108krYrRmAQgeUKbfaxkHl
         gmU22yJsqbU3cESPmz8+1d6QziRWvTqyaOksLGac7apNNlcZOT53fWiWUmo72IKoX/VB
         AEfe4agUlFLzCn7teafJKTBzRVnhd8SPg54HuZXEOMLxRWwgQ/ztrUslXl9aBN0rzzRW
         vIeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAhsJ4PyQn3RMdJx4X3FFKPkXuG5j8TEO75SLGqfDTU=;
        b=HoKQT63JcqQT7LsqPor8hn/Fxv8NzPZ1zvrU+DruxVJutn2LQDiytShWSloQ/z0pY+
         bAvi7y+nm22LSakfBT1nTHKjpBKdqPA+qfmpSP3kk1RCk/IBADFfX7QoUSyidjMcjlD/
         0Oqs9sgyodKcLFEopTFj7PUo80G+ZfAf4FHnZlAdvKiiPm93e1NDx+rNBX3+ETBJ1RoE
         Zpu7Z3uBCmPf4hvzRDbvp229xA4dNzTIf0wgGOegu8LAf3ScUs2P5HWTBC7nYLwmoYvv
         9RbrO0SC80cIZxyuNk5pGDDVhn+STjcT9kpi4Nd0vdM2fjl9lVzjrFMTEGrDXz4P0Qoq
         imaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AAhsJ4PyQn3RMdJx4X3FFKPkXuG5j8TEO75SLGqfDTU=;
        b=LNExrMcHsyYqoDe7lUBLNB8p72PD0qj4+LGCFM1cA/frkRQcZ1/VvZn7fvo823J920
         04g1xAgYb3mJBJ7VnfvsQAb7WHUWZ3MIRdGOfrHfntNdP1lnUCIi1LJflFCCPJ7BaDsY
         sV8qmB5/SGCjQgSQzHnlXRr7FeBXp9QHgyr97hID9V1PE+e/JPuwTv28rTXTqNTnwFWq
         3n/+TCm1iM/CcFqyOD5z/qTvnYbe2qOUMbJlH8TeRY6427uT93ZJGKn+T9w9patbp6hH
         8F3kl7D24/yQYz3tdZo/UcJDok2M393qVJ0892qMR/rzqoolGvG7WwxoJK2suVapKdIr
         YwHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531csbCetKD5PpsFe8GjTPJtikz1QDN6prvzDR4I0Axak+OGeBls
	43KMrrdTplINGO0m8D72ZdM=
X-Google-Smtp-Source: ABdhPJzNS3OogW2upqlHMM5H5cZ+iUzMEQe3pcfrgFM2SnymGOOPpZby5y0OQCO9M1jLEoaiLqU4uw==
X-Received: by 2002:a63:5a42:: with SMTP id k2mr94907pgm.301.1627610861601;
        Thu, 29 Jul 2021 19:07:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:815:: with SMTP id m21ls96532pfk.1.gmail; Thu, 29
 Jul 2021 19:07:41 -0700 (PDT)
X-Received: by 2002:a05:6a00:2494:b029:340:298b:acf7 with SMTP id c20-20020a056a002494b0290340298bacf7mr369323pfv.18.1627610861064;
        Thu, 29 Jul 2021 19:07:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627610861; cv=none;
        d=google.com; s=arc-20160816;
        b=azShlgCti6kpBVVcO/SGD1txcArUhQ2JSEkG4Z+CUXaupRsr2D+8Atf4a3215lG1at
         V+LoezhNSIDKuHOInd1ix6lauWOn67kDEipu3YG7uokATXYiPVMkO1PTEVMtUPlo3ST/
         Ho+17y9CwIMjhZut9bCmS6ez2zx98IlMbL1kBHWX5vxT+VRMNxSzOjqubOBFUbS68Fhr
         Xi+p8ezFJthAeloCJmoQ73MII4tOaA0IuGls9nqSh2XidzCigx5F8ucBZTMinRTl/kMl
         zKpRKWV7rjiMS09IUtPmDUJGHupC7EXrJHo8JEtUcBVJiO1R4n8xne87haXzzsOzWw7J
         v3rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D0jPV269cYXFuIt6Gg1NVjQqzHNY0R6AeOaqh70FYAY=;
        b=ociF+uFUi4ErAJh2uwbQGlHSpBYUPdqKxQ+6WYCOWWwkfAn8C4VkaIz4N52Ly4qNMb
         EP8HIB1Dq6X/5ptROsmhxkjdmOkeZbeR8DhHB6w86usFMAOL7Ktgccxoc38aOg7PGfjM
         gN/BoiGOawC6bZR2Ck6S1aY9k/S3wAoaTlQXdCdgqr57l44qL8CfPNJUbRRU/bAXOBf4
         ox2PxPyJZujllG43XqYzEMZiMz8U0MUVMs9mnJDgYT1jb3qJTd3tTH4PCoGHAlu7KykL
         YT1ovn5K8ymL4ZgmmiEMJ9ivBhxBzz8SRJXx4UKUcI0DFNIvEH/7yIGLUE2z4yAcWU9O
         ZflA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UQ4StuH+;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id r9si6925pls.4.2021.07.29.19.07.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 19:07:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Received: by mail-oi1-x22c.google.com with SMTP id y18so11087565oiv.3
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 19:07:41 -0700 (PDT)
X-Received: by 2002:a05:6808:1390:: with SMTP id c16mr178642oiw.123.1627610860403;
 Thu, 29 Jul 2021 19:07:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210727205855.411487-1-keescook@chromium.org> <20210727205855.411487-24-keescook@chromium.org>
In-Reply-To: <20210727205855.411487-24-keescook@chromium.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 29 Jul 2021 22:07:29 -0400
Message-ID: <CADnq5_Npb8uYvd+R4UHgf-w8-cQj3JoODjviJR_Y9w9wqJ71mQ@mail.gmail.com>
Subject: Re: [PATCH 23/64] drm/amd/pm: Use struct_group() for memcpy() region
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, 
	Linux Wireless List <linux-wireless@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-block@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Keith Packard <keithpac@amazon.com>, 
	Network Development <netdev@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UQ4StuH+;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22c
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 27, 2021 at 5:17 PM Kees Cook <keescook@chromium.org> wrote:
>
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
>
> Use struct_group() in structs:
>         struct atom_smc_dpm_info_v4_5
>         struct atom_smc_dpm_info_v4_6
>         struct atom_smc_dpm_info_v4_7
>         struct atom_smc_dpm_info_v4_10
>         PPTable_t
> so the grouped members can be referenced together. This will allow
> memcpy() and sizeof() to more easily reason about sizes, improve
> readability, and avoid future warnings about writing beyond the end of
> the first member.
>
> "pahole" shows no size nor member offset changes to any structs.
> "objdump -d" shows no object code changes.

These headers represent interfaces with firmware running on
microcontrollers, so if the sizes or offsets change that could cause a
problem.  That doesn't seem to be the case, but something to keep in
mind.  Patch is:
Acked-by: Alex Deucher <alexander.deucher@amd.com>
Feel free to take this through whatever tree makes sense.

Alex

>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/gpu/drm/amd/include/atomfirmware.h           |  9 ++++++++-
>  .../gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h    |  3 ++-
>  drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h  |  3 ++-
>  .../gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h   |  3 ++-
>  drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c    |  6 +++---
>  drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c      | 12 ++++++++----
>  drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c   |  6 +++---
>  7 files changed, 28 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/include/atomfirmware.h b/drivers/gpu/drm/amd/include/atomfirmware.h
> index 3811e58dd857..694dee9d2691 100644
> --- a/drivers/gpu/drm/amd/include/atomfirmware.h
> +++ b/drivers/gpu/drm/amd/include/atomfirmware.h
> @@ -2081,6 +2081,7 @@ struct atom_smc_dpm_info_v4_5
>  {
>    struct   atom_common_table_header  table_header;
>      // SECTION: BOARD PARAMETERS
> +  struct_group(dpm_info,
>      // I2C Control
>    struct smudpm_i2c_controller_config_v2  I2cControllers[8];
>
> @@ -2159,7 +2160,7 @@ struct atom_smc_dpm_info_v4_5
>    uint32_t MvddRatio; // This is used for MVDD Vid workaround. It has 16 fractional bits (Q16.16)
>
>    uint32_t     BoardReserved[9];
> -
> +  );
>  };
>
>  struct atom_smc_dpm_info_v4_6
> @@ -2168,6 +2169,7 @@ struct atom_smc_dpm_info_v4_6
>    // section: board parameters
>    uint32_t     i2c_padding[3];   // old i2c control are moved to new area
>
> +  struct_group(dpm_info,
>    uint16_t     maxvoltagestepgfx; // in mv(q2) max voltage step that smu will request. multiple steps are taken if voltage change exceeds this value.
>    uint16_t     maxvoltagestepsoc; // in mv(q2) max voltage step that smu will request. multiple steps are taken if voltage change exceeds this value.
>
> @@ -2246,12 +2248,14 @@ struct atom_smc_dpm_info_v4_6
>
>    // reserved
>    uint32_t   boardreserved[10];
> +  );
>  };
>
>  struct atom_smc_dpm_info_v4_7
>  {
>    struct   atom_common_table_header  table_header;
>      // SECTION: BOARD PARAMETERS
> +  struct_group(dpm_info,
>      // I2C Control
>    struct smudpm_i2c_controller_config_v2  I2cControllers[8];
>
> @@ -2348,6 +2352,7 @@ struct atom_smc_dpm_info_v4_7
>    uint8_t      Padding8_Psi2;
>
>    uint32_t     BoardReserved[5];
> +  );
>  };
>
>  struct smudpm_i2c_controller_config_v3
> @@ -2478,6 +2483,7 @@ struct atom_smc_dpm_info_v4_10
>    struct   atom_common_table_header  table_header;
>
>    // SECTION: BOARD PARAMETERS
> +  struct_group(dpm_info,
>    // Telemetry Settings
>    uint16_t GfxMaxCurrent; // in Amps
>    uint8_t   GfxOffset;     // in Amps
> @@ -2524,6 +2530,7 @@ struct atom_smc_dpm_info_v4_10
>    uint16_t spare5;
>
>    uint32_t reserved[16];
> +  );
>  };
>
>  /*
> diff --git a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
> index 43d43d6addc0..8093a98800c3 100644
> --- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
> +++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
> @@ -643,6 +643,7 @@ typedef struct {
>    // SECTION: BOARD PARAMETERS
>
>    // SVI2 Board Parameters
> +  struct_group(v4_6,
>    uint16_t     MaxVoltageStepGfx; // In mV(Q2) Max voltage step that SMU will request. Multiple steps are taken if voltage change exceeds this value.
>    uint16_t     MaxVoltageStepSoc; // In mV(Q2) Max voltage step that SMU will request. Multiple steps are taken if voltage change exceeds this value.
>
> @@ -728,10 +729,10 @@ typedef struct {
>    uint32_t     BoardVoltageCoeffB;    // decode by /1000
>
>    uint32_t     BoardReserved[7];
> +  );
>
>    // Padding for MMHUB - do not modify this
>    uint32_t     MmHubPadding[8]; // SMU internal use
> -
>  } PPTable_t;
>
>  typedef struct {
> diff --git a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
> index 04752ade1016..0b4e6e907e95 100644
> --- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
> +++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
> @@ -725,6 +725,7 @@ typedef struct {
>    uint32_t     Reserved[8];
>
>    // SECTION: BOARD PARAMETERS
> +  struct_group(v4,
>    // I2C Control
>    I2cControllerConfig_t  I2cControllers[NUM_I2C_CONTROLLERS];
>
> @@ -809,10 +810,10 @@ typedef struct {
>    uint8_t      Padding8_Loadline;
>
>    uint32_t     BoardReserved[8];
> +  );
>
>    // Padding for MMHUB - do not modify this
>    uint32_t     MmHubPadding[8]; // SMU internal use
> -
>  } PPTable_t;
>
>  typedef struct {
> diff --git a/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h b/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
> index a017983ff1fa..5056d3728da8 100644
> --- a/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
> +++ b/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
> @@ -390,6 +390,7 @@ typedef struct {
>    uint32_t spare3[14];
>
>    // SECTION: BOARD PARAMETERS
> +  struct_group(v4_10,
>    // Telemetry Settings
>    uint16_t GfxMaxCurrent; // in Amps
>    int8_t   GfxOffset;     // in Amps
> @@ -444,7 +445,7 @@ typedef struct {
>
>    //reserved
>    uint32_t reserved[14];
> -
> +  );
>  } PPTable_t;
>
>  typedef struct {
> diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c b/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
> index 6ec8492f71f5..19951399cb33 100644
> --- a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
> +++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
> @@ -463,11 +463,11 @@ static int arcturus_append_powerplay_table(struct smu_context *smu)
>                         smc_dpm_table->table_header.format_revision,
>                         smc_dpm_table->table_header.content_revision);
>
> +       BUILD_BUG_ON(sizeof(smc_pptable->v4_6) != sizeof(smc_dpm_table->dpm_info));
>         if ((smc_dpm_table->table_header.format_revision == 4) &&
>             (smc_dpm_table->table_header.content_revision == 6))
> -               memcpy(&smc_pptable->MaxVoltageStepGfx,
> -                      &smc_dpm_table->maxvoltagestepgfx,
> -                      sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_6, maxvoltagestepgfx));
> +               memcpy(&smc_pptable->v4_6, &smc_dpm_table->dpm_info,
> +                      sizeof(smc_dpm_table->dpm_info));
>
>         return 0;
>  }
> diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c b/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
> index 59ea59acfb00..cb6665fbe319 100644
> --- a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
> +++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
> @@ -431,16 +431,20 @@ static int navi10_append_powerplay_table(struct smu_context *smu)
>
>         switch (smc_dpm_table->table_header.content_revision) {
>         case 5: /* nv10 and nv14 */
> -               memcpy(smc_pptable->I2cControllers, smc_dpm_table->I2cControllers,
> -                       sizeof(*smc_dpm_table) - sizeof(smc_dpm_table->table_header));
> +               BUILD_BUG_ON(sizeof(smc_pptable->v4) !=
> +                            sizeof(smc_dpm_table->dpm_info));
> +               memcpy(&smc_pptable->v4, &smc_dpm_table->dpm_info,
> +                      sizeof(smc_dpm_table->dpm_info));
>                 break;
>         case 7: /* nv12 */
>                 ret = amdgpu_atombios_get_data_table(adev, index, NULL, NULL, NULL,
>                                               (uint8_t **)&smc_dpm_table_v4_7);
>                 if (ret)
>                         return ret;
> -               memcpy(smc_pptable->I2cControllers, smc_dpm_table_v4_7->I2cControllers,
> -                       sizeof(*smc_dpm_table_v4_7) - sizeof(smc_dpm_table_v4_7->table_header));
> +               BUILD_BUG_ON(sizeof(smc_pptable->v4) !=
> +                            sizeof(smc_dpm_table_v4_7->dpm_info));
> +               memcpy(&smc_pptable->v4, &smc_dpm_table_v4_7->dpm_info,
> +                      sizeof(smc_dpm_table_v4_7->dpm_info));
>                 break;
>         default:
>                 dev_err(smu->adev->dev, "smc_dpm_info with unsupported content revision %d!\n",
> diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c b/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
> index 856eeaf293b8..c0645302fa50 100644
> --- a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
> +++ b/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
> @@ -407,11 +407,11 @@ static int aldebaran_append_powerplay_table(struct smu_context *smu)
>                         smc_dpm_table->table_header.format_revision,
>                         smc_dpm_table->table_header.content_revision);
>
> +       BUILD_BUG_ON(sizeof(smc_pptable->v4_10) != sizeof(smc_dpm_table->dpm_info));
>         if ((smc_dpm_table->table_header.format_revision == 4) &&
>             (smc_dpm_table->table_header.content_revision == 10))
> -               memcpy(&smc_pptable->GfxMaxCurrent,
> -                      &smc_dpm_table->GfxMaxCurrent,
> -                      sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_10, GfxMaxCurrent));
> +               memcpy(&smc_pptable->v4_10, &smc_dpm_table->dpm_info,
> +                      sizeof(smc_dpm_table->dpm_info));
>         return 0;
>  }
>
> --
> 2.30.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_Npb8uYvd%2BR4UHgf-w8-cQj3JoODjviJR_Y9w9wqJ71mQ%40mail.gmail.com.
