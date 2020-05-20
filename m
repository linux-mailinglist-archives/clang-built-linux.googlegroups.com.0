Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFMQS33AKGQETKT23MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7DA1DBE34
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 21:42:14 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id m7sf3717833pjh.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 12:42:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590003733; cv=pass;
        d=google.com; s=arc-20160816;
        b=ne2W2ecjAt2RTb7TjpohXud21lUbm0Ps8n06auSMVNrRgqS9wY3cs7BMlLUI17A5l3
         zQ7WQSxcDLQtyqvyvqSBqVU1/7DTSB7Hx7t++8cE9Ab8VNv9t24g6HVTyMoqPlanzHAb
         Ek42qZEsB6ES/kvDFLe7CxPYMhVxX5GT1hkqQNAHV46Gfqpk+YA+Jw8EV1NRYRk3lDo4
         7FFlekX9vcVzGDB7PSlfJiEuQ3lZXAwFWru0LJLpyGOI1tJ/JvFmpEpcLMxosHdOXwQb
         aRB9NPz1SBJMK0jMdeWmPUbfUINhjK6pGME8QWUmRLAQ2bP+a7qbXJl1mNgaOo7CyM2o
         DhwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oUOrBemEnIzIZLGAmrKEAvxBqPwdODdVYJKOi97iYc0=;
        b=NwcHUBSxl/5SMYWdJfT0/Q5He4uzBYW3SpLab2y9Q4vQhTbFl3Fwco4lSCWLOXVp0p
         RwDCzVyQqfroy51za1XYtRYMN8GD95bT7u+9+QspXdnTXqCDXnV20VbCqHhxJJIL8e6k
         Ge4po9A9RukxMyu1VLZwDm1UsLnPiUkKcoJ9/RVBL+4rjfwI7911huuwa5VMt0a4dt6/
         iHmAF6exptQUufnoS1CGRnPbhYpJmfAFkwQlXlEiLuu2VZq+e+s6hcsbUxOJ3MIUEK2n
         kzX3pQqLuUQqNGcX5E71dQCjlz/6HrDpEJ30sF24O/qxFdPr4UGzXwt4XR7hCwrO/1C5
         WL3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c6XKSjv1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oUOrBemEnIzIZLGAmrKEAvxBqPwdODdVYJKOi97iYc0=;
        b=ZL7yl777WDBSEhONck7bD/S+B3E+3XdP/nnWBd8vruKy1l6dNBTC4FxIyIZABwjHRy
         xRv8AQN6ggz4fBziEkCJf5+IorEkymltIEkR+Xj262wnAhhgtLOpY2gTWljygLs7mvhP
         gww+zPmgb3mNoeQGd+etLwzPC6hypauv9Mhxv1DYeodeF+dcaWrznfcl2m7ezUfV8qO8
         uhr7HODfDVoF/V4HlE1xrErzVl7bP89deKUX+ORwN0jLxcZh02Xh+llxXpko4YXu4XA0
         9ak/S7wg1e08HOW3iM6kKP2E/FJHY7fp4lEhfUEQWwgz/9zXVbfQUNA3oxkAjotmllKD
         MrJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oUOrBemEnIzIZLGAmrKEAvxBqPwdODdVYJKOi97iYc0=;
        b=JiGEGiHbz5Yp0IEimMzkC2IqQlD+8rIKKIQOmUMdCo8eAxp+NuMpQIefqDf6Yu39BB
         Ruk7/1451NsL1PFuGktnJaMO4AjdNMv0ZPsmW/sK6WmfBoqlg9EeAHvuoC62+sy750Zq
         YQWdZwYScrvUWvVj1WzjE6BOaLyBZJT6RZbxtHg6YcT1eNNMUE7SHQfSfb0j2h3Mk9eJ
         v8Lze1aqR18cpHwKEiiZsw/mBFu0ke3e2bQjWQDpgoO/nGUdoKsJA2ZOQJp1ohQwbrpu
         vzpZ8UY8+BUk/KGHv9DlQP0H6pWbEvuP3QLQRpbQrpzOouOVRqJv/eVW1eJARd5IBaba
         /SAA==
X-Gm-Message-State: AOAM533+fbvbzCKWWLgAFz/4IIYgkzjTuuR7DPwi+e7tJ4K9KxcHbFqC
	P14Vmtqvjt4aYPtoIdj2rGk=
X-Google-Smtp-Source: ABdhPJwM3OQS3XZCKYu5HYSKQJIkJjEbUc+dvJ/ITY7wMSwc63U+grj+pnZtCPca/8ed5ATgKyDvaw==
X-Received: by 2002:a65:6799:: with SMTP id e25mr5748906pgr.9.1590003733386;
        Wed, 20 May 2020 12:42:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2068:: with SMTP id n95ls1662653pjc.3.gmail; Wed, 20
 May 2020 12:42:13 -0700 (PDT)
X-Received: by 2002:a17:90a:d497:: with SMTP id s23mr6810247pju.222.1590003732865;
        Wed, 20 May 2020 12:42:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590003732; cv=none;
        d=google.com; s=arc-20160816;
        b=jTE1ONt7HRyjT07qOLiVG1LNAK6+TfLbrUMETGIBSEO2FYoz8D2WwkShB3mFTS96dE
         Zst/4LaSk985QrHKUOnMC6cslRjGjl0ngP9W1HZjVpTLMQutbMyv7qOG4cIliCoYLN41
         /dX+QSLDPRGSVCqn7bNwbNR1Dy/zY2X9pliYnHzCfIb7jLbYNx2owXWFRqTQkTUnO7WD
         /rnScLejwybyZdsuEELurEhQS6ZwQJwDQ1NXlQ9HD+9p/NmnyTbD+cS+5KFnuvMF58Jo
         rkbJEkDXLDPMgqvezzGptOFDG0lgsW3NXfdLqjXpcCWzCUZi2TRRF3pF4Y/3tX3IM60R
         jXgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0a0q7RXucrWIZghawmhJHqhbpLGJ8tIFpOvFSZ6AKl4=;
        b=pQ8gjuJLdjNjxPmI+Nj+Sf/2LgWMOIEgHcWO3RrwcFQJBuVqyyIklWCjFrmUMIGlF3
         O5GbT1PrQNtb+OvRUrnBa0iPkRVDOpmT5SPePOl/vLHOxfdvs6KdyE93nGYhQNedMv+X
         hyZEbvos6NGAI5ceY4x6xWV16Cq4OEv3EUOkjRTJiW6EszNvagw5lURlFRSx5Rh0yrvw
         bAC2VUkq0IO6+plkZo/s1Tao/+1C82hOhMODK3Vc371/tvoJaHbAwD+XVacLx/lz4EWX
         SCOsRt24R2xa1UslaBAoTLAcFxMwVOIzX7WagfvJeRSlWRNVXVokEWKbope53geG3DeF
         5pmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c6XKSjv1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id m81si406412pfd.2.2020.05.20.12.42.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 12:42:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id a13so1768918pls.8
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 12:42:12 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr7324936pjb.101.1590003732094;
 Wed, 20 May 2020 12:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <202005210222.fkqS2pnd%lkp@intel.com>
In-Reply-To: <202005210222.fkqS2pnd%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 May 2020 12:42:00 -0700
Message-ID: <CAKwvOd=TcBkzbBFX3EFK5VgO8JojZjdRbozHbew81da-wKJ3hg@mail.gmail.com>
Subject: Re: [linuxtv-media:master 440/495] drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17:
 warning: address of 'config->info' will always evaluate to 'true'
To: kbuild test robot <lkp@intel.com>, Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c6XKSjv1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Hi Philip,
Any thoughts on why this wasn't sent to the author?  I know we
restrict LLD warnings, but this case doesn't look like it's from LLD.

On Wed, May 20, 2020 at 11:54 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: linux-media@vger.kernel.org
> TO: Mauro Carvalho Chehab <mchehab@kernel.org>
> CC: linux-media@vger.kernel.org
>
> Hi Mauro,
>
> First bad commit (maybe != root cause):
>
> tree:   git://linuxtv.org/media_tree.git master
> head:   960b2dee908b0fc51cf670841de13b40b44aaaae
> commit: 9d4fa1a16b28b1d12b0378993d2d48f572a045d9 [440/495] media: atomisp: cleanup directory hierarchy
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e6658079aca6d971b4e9d7137a3a2ecbc9c34aec)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 9d4fa1a16b28b1d12b0378993d2d48f572a045d9
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: warning: address of 'config->info' will always evaluate to 'true' [-Wpointer-bool-conversion]
> if (!&config->info) {
> ~ ~~~~~~~~^~~~
> 1 warning generated.
> --
> >> drivers/staging/media/atomisp/pci/sh_css.c:8621:14: warning: address of 'pipe->output_stage' will always evaluate to 'true' [-Wpointer-bool-conversion]
> if (&pipe->output_stage)
> ~~   ~~~~~~^~~~~~~~~~~~
> >> drivers/staging/media/atomisp/pci/sh_css.c:8629:14: warning: address of 'pipe->vf_stage' will always evaluate to 'true' [-Wpointer-bool-conversion]
> if (&pipe->vf_stage)
> ~~   ~~~~~~^~~~~~~~
> >> drivers/staging/media/atomisp/pci/sh_css.c:2460:1: warning: stack frame size of 27088 bytes in function 'create_pipe' [-Wframe-larger-than=]
> create_pipe(enum ia_css_pipe_mode mode,
> ^
> 3 warnings generated.
> --
> >> drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c:148:35: warning: implicit conversion from 'unsigned long' to 'int32_t' (aka 'int') changes value from 18446744073709543424 to -8192 [-Wconstant-conversion]
> return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
> ~~~~~~ ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp//pci/hive_isp_css_include/math_support.h:35:52: note: expanded from macro 'MAX'
> #define MAX(a, b)            (((a) > (b)) ? (a) : (b))
> ^
> 1 warning generated.
>
> vim +4278 drivers/staging/media/atomisp/pci/atomisp_cmd.c
>
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4260
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4261  /*
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4262   * Function to set/get isp parameters to isp
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4263   */
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4264  int atomisp_param(struct atomisp_sub_device *asd, int flag,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4265                    struct atomisp_parm *config)
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4266  {
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4267          struct atomisp_device *isp = asd->isp;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4268          struct ia_css_pipe_config *vp_cfg =
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4269                      &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4270                      pipe_configs[IA_CSS_PIPE_ID_VIDEO];
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4271
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4272          /* Read parameter for 3A binary info */
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4273          if (flag == 0) {
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4274                  struct atomisp_css_dvs_grid_info *dvs_grid_info =
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4275                      atomisp_css_get_dvs_grid_info(
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4276                          &asd->params.curr_grid_info);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4277
> bdfe0beb95eebc drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19 @4278                  if (!&config->info) {
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4279                          dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4280                          return -EINVAL;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4281                  }
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4282                  atomisp_curr_user_grid_info(asd, &config->info);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4283
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4284                  /* We always return the resolution and stride even if there is
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4285                   * no valid metadata. This allows the caller to get the
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4286                   * information needed to allocate user-space buffers. */
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4287                  config->metadata_config.metadata_height = asd->
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4288                          stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream_info.
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4289                          metadata_info.resolution.height;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4290                  config->metadata_config.metadata_stride = asd->
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4291                          stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream_info.
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4292                          metadata_info.stride;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4293
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4294                  /* update dvs grid info */
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4295                  if (dvs_grid_info)
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4296                          memcpy(&config->dvs_grid,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4297                                 dvs_grid_info,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4298                                 sizeof(struct atomisp_css_dvs_grid_info));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4299
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4300                  if (asd->run_mode->val != ATOMISP_RUN_MODE_VIDEO) {
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4301                          config->dvs_envelop.width = 0;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4302                          config->dvs_envelop.height = 0;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4303                          return 0;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4304                  }
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4305
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4306                  /* update dvs envelop info */
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4307                  if (!asd->continuous_mode->val) {
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4308                          config->dvs_envelop.width = vp_cfg->dvs_envelope.width;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4309                          config->dvs_envelop.height =
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4310                              vp_cfg->dvs_envelope.height;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4311                  } else {
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4312                          unsigned int dvs_w, dvs_h, dvs_w_max, dvs_h_max;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4313
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4314                          dvs_w = vp_cfg->bayer_ds_out_res.width -
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4315                                  vp_cfg->output_info[0].res.width;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4316                          dvs_h = vp_cfg->bayer_ds_out_res.height -
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4317                                  vp_cfg->output_info[0].res.height;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4318                          dvs_w_max = rounddown(
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4319                                          vp_cfg->output_info[0].res.width / 5,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4320                                          ATOM_ISP_STEP_WIDTH);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4321                          dvs_h_max = rounddown(
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4322                                          vp_cfg->output_info[0].res.height / 5,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4323                                          ATOM_ISP_STEP_HEIGHT);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4324
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4325                          config->dvs_envelop.width = min(dvs_w, dvs_w_max);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4326                          config->dvs_envelop.height = min(dvs_h, dvs_h_max);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4327                  }
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4328
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4329                  return 0;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4330          }
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4331
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4332          memcpy(&asd->params.css_param.wb_config, &config->wb_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4333                 sizeof(struct atomisp_css_wb_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4334          memcpy(&asd->params.css_param.ob_config, &config->ob_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4335                 sizeof(struct atomisp_css_ob_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4336          memcpy(&asd->params.css_param.dp_config, &config->dp_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4337                 sizeof(struct atomisp_css_dp_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4338          memcpy(&asd->params.css_param.de_config, &config->de_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4339                 sizeof(struct atomisp_css_de_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4340          memcpy(&asd->params.css_param.dz_config, &config->dz_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4341                 sizeof(struct atomisp_css_dz_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4342          memcpy(&asd->params.css_param.ce_config, &config->ce_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4343                 sizeof(struct atomisp_css_ce_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4344          memcpy(&asd->params.css_param.nr_config, &config->nr_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4345                 sizeof(struct atomisp_css_nr_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4346          memcpy(&asd->params.css_param.ee_config, &config->ee_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4347                 sizeof(struct atomisp_css_ee_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4348          memcpy(&asd->params.css_param.tnr_config, &config->tnr_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4349                 sizeof(struct atomisp_css_tnr_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4350
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4351          if (asd->params.color_effect == V4L2_COLORFX_NEGATIVE) {
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4352                  asd->params.css_param.cc_config.matrix[3] = -config->cc_config.matrix[3];
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4353                  asd->params.css_param.cc_config.matrix[4] = -config->cc_config.matrix[4];
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4354                  asd->params.css_param.cc_config.matrix[5] = -config->cc_config.matrix[5];
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4355                  asd->params.css_param.cc_config.matrix[6] = -config->cc_config.matrix[6];
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4356                  asd->params.css_param.cc_config.matrix[7] = -config->cc_config.matrix[7];
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4357                  asd->params.css_param.cc_config.matrix[8] = -config->cc_config.matrix[8];
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4358          }
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4359
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4360          if (asd->params.color_effect != V4L2_COLORFX_SEPIA &&
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4361              asd->params.color_effect != V4L2_COLORFX_BW) {
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4362                  memcpy(&asd->params.css_param.cc_config, &config->cc_config,
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4363                         sizeof(struct atomisp_css_cc_config));
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4364                  atomisp_css_set_cc_config(asd, &asd->params.css_param.cc_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4365          }
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4366
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4367          atomisp_css_set_wb_config(asd, &asd->params.css_param.wb_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4368          atomisp_css_set_ob_config(asd, &asd->params.css_param.ob_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4369          atomisp_css_set_de_config(asd, &asd->params.css_param.de_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4370          atomisp_css_set_dz_config(asd, &asd->params.css_param.dz_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4371          atomisp_css_set_ce_config(asd, &asd->params.css_param.ce_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4372          atomisp_css_set_dp_config(asd, &asd->params.css_param.dp_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4373          atomisp_css_set_nr_config(asd, &asd->params.css_param.nr_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4374          atomisp_css_set_ee_config(asd, &asd->params.css_param.ee_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4375          atomisp_css_set_tnr_config(asd, &asd->params.css_param.tnr_config);
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4376          asd->params.css_update_params_needed = true;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4377
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4378          return 0;
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4379  }
> ad85094b293e40 drivers/staging/media/atomisp/pci/atomisp2/atomisp_cmd.c Mauro Carvalho Chehab 2020-04-19  4380
>
> :::::: The code at line 4278 was first introduced by commit
> :::::: bdfe0beb95eebc864f341fd0c5e903672b90b1a2 media: atomisp: fix several coding style issues
>
> :::::: TO: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> :::::: CC: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005210222.fkqS2pnd%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DTcBkzbBFX3EFK5VgO8JojZjdRbozHbew81da-wKJ3hg%40mail.gmail.com.
