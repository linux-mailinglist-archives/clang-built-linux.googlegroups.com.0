Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQ4WUPVQKGQEMGMF3MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6EEA3054
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:07:47 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id c1sf3799164wrb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 00:07:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567148867; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jgq+jsITq9TeoOwcUXhnNcv3W8pmCSJ7OcSZbX1xxDVuTwjQFuFg0cgWmKbYja8Hvl
         UQ+FSUZhHkb5cVSManSiSBQUZq5krPrvoFLxI13QNZDbiJ597JGTnVKiy3UK+TQY8Nff
         lMO71JLsXFpZPMVN7O8V9BjMqem+CX0kYKwiuIDpaMj128zOVIrVkS5rVlkNnxh+yq7k
         dN5/d/Yhn/8W58CYhApxt9/52wweOUoSLHF9JN5uB86s8t+rDdUhH/6h1h5bRS7xc+Lx
         /ZB/A6L/J3LFehgsKe390jka9WpoiIMigLpqhmJJ8SAv2z6tqUS4GBjIS90VMjn5ksgg
         he+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wtZPWEgzuhxck60FaVuVsnnrR0q9UmsGq4ndWSKLrns=;
        b=DqET04qTNCP2hvne2MxVYYCfWl+RlKw9wDm+WHjEIwArt7JdV+2L+08LOBSxKJEBGG
         pvk75e5/M7Xaz3UO8fKkH1Oq2ezMslMHP3nop3EgnCXnQtqVPQm83rQZ0qcSaYOmXpnu
         Lm0vYKJt/Ii0KovWFBSgf8+ZhVF9waaYLoAgKdM786HgeR8wwiIo3SEeH03Ln7JiVQGi
         AVR35aGBJAWt1vDwHpp1DYHCvJeGYoWxzvxvEKW5u3Dmm5bsFrs5MyDryupT08YTa/GX
         SzM5Wzc+ZhMK7RRtSU3+xxwwzpMsbxvMkvIm1bocrr2kWYkPCpiYqLjj7BQvzW9kzoMq
         2SYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F2kri1w3;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wtZPWEgzuhxck60FaVuVsnnrR0q9UmsGq4ndWSKLrns=;
        b=ldnH0347OgW/yyI0tNsVMMKQf38g9dn432d8S1VTO3RGD2VSxVxD+E7HgJXhDyfDex
         uw/j4LyPDxx/+jZA3otvf9QWILKfibg6orhYuf0ksD6qd3ApdurJuxe/DnAc+vCrHrJv
         x9yKlXvrKp9joo96rhkJc+eOuybYjL6BYN/z6iH9XGF/+2IbKjQkzMSXKgFK9l8/EXRu
         ReromXT8iHooEuh/MQ+u6w5rRfHOttH+L2YnFIIjB6ahoUkOi2rzyHSUAeeeh0kr0o2w
         fUD+YtivY76ezjYC+KrqxPIY4vAXs1Aq5APtvOXkrxmJXLS2R+iJ/B3ZiZixhKUWngOj
         1TYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtZPWEgzuhxck60FaVuVsnnrR0q9UmsGq4ndWSKLrns=;
        b=UAlgr0XIZrIZ8V+JiiaRrDOj7SI2dTuPLvtUpKc53TyBlrw8MQfvNjGP8fMOQ9iezL
         OU+PBkCoEgiOKfjlRkP5dFMpGCm6zTjOcEmD5CcqaztVXcS88Ea0Re7SmtvKhIRteEiq
         MYhhX+PmM17jpRH0XiqyKw3ajY+WqXiM8X+s8eEtCyOVQqufIztlRNtYQmwQW7NsSta+
         pBhqhYUYb4lKw8+rJHNWKDripd0aCEKQcvS+jT028xPimgDo4U9/bpgT7KvvxYCdJn3f
         zxbdJ8jjWVn/B9SRUsobo4dXeqCd9qtFbISyCLUx74Tov2Odr0XY0+Y6myMRXHGXjqxE
         KkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtZPWEgzuhxck60FaVuVsnnrR0q9UmsGq4ndWSKLrns=;
        b=kSfR2FF32zCUdyr6qtIIFuI387Xah/JxMMdhFxdZkHJz3mr01PKTjc3DCsQoq2wDyN
         G7bRoaW99Po9j9H8os2Xd36mk7KqXw04+bJemfO2Lh9hBu7CbZ7GUglbKB/fmS118oKh
         eMDnCIAjk/k5uv2+JHrpx8DqmsFVW8+qIjGjyHSle2A3VoAWVOFBB1hiilvMqvllNhgq
         ++nd/VaVH9mhUKqz2J/cT9qpBTz5kF9XHACq/KLxZMxYJZcmAYPt4y/YauxaIIILR28K
         0qvhkMfT+Wl1dps+zqWWuG1pzi1HgIH1yoPXT/+mpb0EJZ/NE3CwF/7GSLBAlQBt2iPZ
         XndA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXbFscsVv4/cUM2tv5lpoORqgEvq6ynD/QAs+UYy38IPYCoTebG
	BBAQk5PMArAGbhtuGcwM3mc=
X-Google-Smtp-Source: APXvYqyWeFafxA4SmYBwtC6+YUbvIIA0vSOzm72vT6ldn8YquVXcQojvSF+225kdL0nBhpcBhw/M2g==
X-Received: by 2002:a05:6000:cb:: with SMTP id q11mr17589485wrx.50.1567148867407;
        Fri, 30 Aug 2019 00:07:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:660f:: with SMTP id n15ls1663528wru.11.gmail; Fri, 30
 Aug 2019 00:07:46 -0700 (PDT)
X-Received: by 2002:a5d:4081:: with SMTP id o1mr8465938wrp.41.1567148866748;
        Fri, 30 Aug 2019 00:07:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567148866; cv=none;
        d=google.com; s=arc-20160816;
        b=um7anLIWpKmhTGKcIFzROsx+W+fDjAltHoXTSW+aoUgAbgybyTx/cR0jM3sv+998ot
         o5T+Ia2YgeB1LJgQO1HccN1axLey99jI5kh4osMLjgaG7yuX3RBAxIs7uDNYd0xfxh+w
         nk7RrvujzBIIBcMmJJ067/qUI9ay95bdZKEBHtDyQ9Jzm3LVzDK76umQabIJibyYc4l5
         93do/hUVp2cwPMvgUDBL4rE5QpDfr9RFARku1Nk89eErsoMJ4jiG592Z/rtAFdF0l2hR
         F4El37mdML02cbW36rK9fDg+Hp21ngvWelksA8B1miLJSeN/33mBoUCabB5nMg1+Iz7A
         XmgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ppAU2NgEZa4ZJU7MI0xO+sruhEiDBbdIxv+AOdLIj0w=;
        b=Xv9cem6vG5PM+OViHV7x1mRUu5TqWjt6vGYLCHWYV5RW8O+/sUahPCQtS+gNa7nFJZ
         PqSkKU2NZjln9tR72qKJ8l47G/r30Bs6HsZnWNhDXGYlBvc848KYRPEdvBhyHPkfJp9h
         86XNPAME1dnXaEoVq7XeurHwpJIGKUq8gMexm/WfoVSV/eBm9Y4zbY87+yig3pV89Q3i
         OSJCevL8uPR2CF7okeWs84Ja3qWAAL4avbY7vE3x5mrlorT+3E4rXTTnKBjYwrYQIEZj
         2SSe72BuOTKST4y9zi8gvlg54cza7MzVvQq5QIsZGkwhmVptzZPsZwtgp3iNJhbFcSvU
         r8ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F2kri1w3;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k13si328007wrv.0.2019.08.30.00.07.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 00:07:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id c3so5829998wrd.7
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 00:07:46 -0700 (PDT)
X-Received: by 2002:a5d:4403:: with SMTP id z3mr17097205wrq.29.1567148866031;
 Fri, 30 Aug 2019 00:07:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <20190828055425.24765-2-yamada.masahiro@socionext.com> <20190828182017.GB127646@archlinux-threadripper>
 <CAKwvOd=r5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw@mail.gmail.com>
In-Reply-To: <CAKwvOd=r5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 30 Aug 2019 09:07:34 +0200
Message-ID: <CA+icZUWmmC7CruvXx6U0cdXMLaMWJadU=T61E0om1rOuW3==pw@mail.gmail.com>
Subject: Re: [PATCH 2/2] kbuild: allow Clang to find unused static inline
 functions for W=1 build
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, Sven Schnelle <svens@stackframe.org>, 
	Xiaozhou Liu <liuxiaozhou@bytedance.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=F2kri1w3;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Thu, Aug 29, 2019 at 1:28 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
[...]
> > >
> > > Here is a counter implementation. The current problem is, W=... only
> > > controls compiler flags, which are globally effective. There is no way
> > > to narrow the scope to only 'static inline' functions.
> > >
> > > This commit defines KBUILD_EXTRA_WARN[123] corresponding to W=[123].
> > > When KBUILD_EXTRA_WARN1 is defined, __maybe_unused is omitted from
> > > the 'inline' macro.
> > >
> > > This makes the code a bit uglier, so personally I do not want to carry
> > > this forever. If we can manage to fix most of the warnings, we can
> > > drop this entirely, then enable -Wunused-function all the time.
>
> How many warnings?
>

I tried or adapted this 2-2 patch with v2 of 1-2 patch which is in
kbuild.git#kbuild (see below [1]).

$ grep warning: build-log.txt | grep '\[-Wunused-function]' | wc -l
214

$ grep warning: build-log.txt | grep '\[-Wunused-function]' | sort
arch/x86/kernel/apic/io_apic.c:162:19: warning: unused function
'mp_init_irq_at_boot' [-Wunused-function]
arch/x86/kernel/cpu/common.c:298:19: warning: unused function
'flag_is_changeable_p' [-Wunused-function]
arch/x86/kvm/lapic.c:302:19: warning: unused function
'apic_lvt_vector' [-Wunused-function]
arch/x86/xen/p2m.c:137:24: warning: unused function 'p2m_index'
[-Wunused-function]
block/blk-zoned.c:23:24: warning: unused function 'blk_zone_start'
[-Wunused-function]
block/partitions/mac.c:23:20: warning: unused function
'mac_fix_string' [-Wunused-function]
drivers/acpi/ec.c:2047:20: warning: unused function
'acpi_ec_query_exit' [-Wunused-function]
drivers/atm/horizon.c:465:20: warning: unused function 'dump_regs'
[-Wunused-function]
drivers/atm/horizon.c:479:20: warning: unused function 'dump_framer'
[-Wunused-function]
drivers/atm/idt77252.c:1786:1: warning: unused function
'idt77252_fbq_level' [-Wunused-function]
drivers/cpufreq/intel_pstate.c:77:23: warning: unused function
'percent_fp' [-Wunused-function]
drivers/cpufreq/intel_pstate.c:92:23: warning: unused function
'percent_ext_fp' [-Wunused-function]
drivers/crypto/chelsio/chcr_algo.c:129:19: warning: unused function
'is_ofld_imm' [-Wunused-function]
drivers/crypto/qat/qat_common/qat_asym_algs.c:252:34: warning: unused
function 'qat_dh_get_params' [-Wunused-function]
drivers/dma/ioat/dca.c:44:19: warning: unused function
'dca2_tag_map_valid' [-Wunused-function]
drivers/edac/i5100_edac.c:247:19: warning: unused function
'i5100_nrecmema_dm_buf_id' [-Wunused-function]
drivers/gpu/drm/drm_mm.c:155:1: warning: unused function
'drm_mm_interval_tree_insert' [-Wunused-function]
drivers/gpu/drm/drm_mm.c:155:1: warning: unused function
'drm_mm_interval_tree_iter_next' [-Wunused-function]
drivers/gpu/drm/drm_mm.c:294:19: warning: unused function
'rb_hole_size' [-Wunused-function]
drivers/gpu/drm/gma500/psb_drv.c:400:20: warning: unused function
'get_brightness' [-Wunused-function]
drivers/gpu/drm/gma500/psb_irq.c:49:1: warning: unused function
'mid_pipe_vsync' [-Wunused-function]
drivers/gpu/drm/i915/display/intel_hdmi.c:1696:26: warning: unused
function 'intel_hdmi_hdcp2_protocol' [-Wunused-function]
drivers/gpu/drm/i915/i915_sw_fence.c:105:20: warning: unused function
'debug_fence_free' [-Wunused-function]
drivers/gpu/drm/i915/i915_sw_fence.c:84:20: warning: unused function
'debug_fence_init_onstack' [-Wunused-function]
drivers/gpu/drm/i915/intel_guc_submission.c:1117:20: warning: unused
function 'ctx_save_restore_disabled' [-Wunused-function]
drivers/gpu/drm/vmwgfx/vmwgfx_overlay.c:58:35: warning: unused
function 'vmw_overlay' [-Wunused-function]
drivers/hv/ring_buffer.c:89:1: warning: unused function
'hv_set_next_read_location' [-Wunused-function]
drivers/hwmon/nct6683.c:485:19: warning: unused function 'in_to_reg'
[-Wunused-function]
drivers/hwmon/sis5595.c:158:18: warning: unused function 'DIV_TO_REG'
[-Wunused-function]
drivers/hwmon/vt1211.c:198:20: warning: unused function 'superio_outb'
[-Wunused-function]
drivers/infiniband/core/cm.c:1528:19: warning: unused function
'cm_is_active_peer' [-Wunused-function]
drivers/infiniband/core/device.c:2747:1: warning: unused function
'__chk_RDMA_NL_LS' [-Wunused-function]
drivers/infiniband/core/iwcm.c:1208:1: warning: unused function
'__chk_RDMA_NL_IWCM' [-Wunused-function]
drivers/infiniband/core/nldev.c:2105:1: warning: unused function
'__chk_RDMA_NL_NLDEV' [-Wunused-function]
drivers/infiniband/hw/qib/qib_iba7322.c:803:19: warning: unused
function 'qib_read_ureg' [-Wunused-function]
drivers/infiniband/sw/rdmavt/vt.c:287:36: warning: unused function
'to_iucontext' [-Wunused-function]
drivers/isdn/hardware/mISDN/hfcmulti.c:667:1: warning: unused function
'vpm_read_address' [-Wunused-function]
drivers/leds/leds-pca955x.c:140:19: warning: unused function
'pca95xx_num_led_regs' [-Wunused-function]
drivers/md/raid0.c:444:19: warning: unused function
'is_io_in_chunk_boundary' [-Wunused-function]
drivers/media/dvb-frontends/drxk_hard.c:159:19: warning: unused
function 'MulDiv32' [-Wunused-function]
drivers/media/dvb-frontends/stb6100.c:113:20: warning: unused function
'stb6100_normalise_regs' [-Wunused-function]
drivers/media/i2c/cs3308.c:30:19: warning: unused function
'cs3308_read' [-Wunused-function]
drivers/media/i2c/cx25840/cx25840-ir.c:139:19: warning: unused
function 'ns_to_clock_divider' [-Wunused-function]
drivers/media/i2c/cx25840/cx25840-ir.c:145:28: warning: unused
function 'clock_divider_to_ns' [-Wunused-function]
drivers/media/i2c/cx25840/cx25840-ir.c:163:19: warning: unused
function 'freq_to_clock_divider' [-Wunused-function]
drivers/media/mc/mc-entity.c:17:27: warning: unused function
'gobj_type' [-Wunused-function]
drivers/media/pci/cx18/cx18-alsa-main.c:56:23: warning: unused
function 'p_to_snd_cx18_card' [-Wunused-function]
drivers/media/pci/cx23885/cx23888-ir.c:178:19: warning: unused
function 'ns_to_clock_divider' [-Wunused-function]
drivers/media/pci/cx23885/cx23888-ir.c:184:28: warning: unused
function 'clock_divider_to_ns' [-Wunused-function]
drivers/media/pci/cx23885/cx23888-ir.c:202:19: warning: unused
function 'freq_to_clock_divider' [-Wunused-function]
drivers/media/pci/ivtv/ivtv-alsa-main.c:53:23: warning: unused
function 'p_to_snd_ivtv_card' [-Wunused-function]
drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c:394:19: warning: unused
function 'vop_interlaced' [-Wunused-function]
drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c:399:18: warning: unused
function 'vop_channel' [-Wunused-function]
drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c:414:18: warning: unused
function 'vop_hsize' [-Wunused-function]
drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c:419:18: warning: unused
function 'vop_vsize' [-Wunused-function]
drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c:439:19: warning: unused
function 'vop_sec' [-Wunused-function]
drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c:444:19: warning: unused
function 'vop_usec' [-Wunused-function]
drivers/media/rc/fintek-cir.c:55:20: warning: unused function
'fintek_clear_reg_bit' [-Wunused-function]
drivers/media/rc/nuvoton-cir.c:78:20: warning: unused function
'nvt_clear_reg_bit' [-Wunused-function]
drivers/media/usb/au0828/au0828-i2c.c:26:19: warning: unused function
'i2c_slave_did_write_ack' [-Wunused-function]
drivers/media/usb/usbvision/usbvision-video.c:145:37: warning: unused
function 'cd_to_usbvision' [-Wunused-function]
drivers/misc/hpilo.c:396:19: warning: unused function
'is_device_reset' [-Wunused-function]
drivers/mmc/host/sdricoh_cs.c:104:28: warning: unused function
'sdricoh_readw' [-Wunused-function]
drivers/net/ethernet/atheros/atl1c/atl1c_main.c:184:20: warning:
unused function 'atl1c_irq_reset' [-Wunused-function]
drivers/net/ethernet/broadcom/b44.c:201:20: warning: unused function
'__b44_cam_read' [-Wunused-function]
drivers/net/ethernet/broadcom/bnx2x/bnx2x_sriov.c:334:20: warning:
unused function 'bnx2x_vf_vlan_credit' [-Wunused-function]
drivers/net/ethernet/cavium/liquidio/request_manager.c:43:19: warning:
unused function 'IQ_INSTR_MODE_64B' [-Wunused-function]
drivers/net/ethernet/chelsio/cxgb3/sge.c:167:32: warning: unused
function 'fl_to_qset' [-Wunused-function]
drivers/net/ethernet/chelsio/cxgb4/sge.c:857:28: warning: unused
function 'calc_tx_descs' [-Wunused-function]
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2952:20: warning: unused
function 'ixgbe_irq_disable_queues' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:1546:20: warning: unused
function 'hw_ena_intr_bit' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2120:19: warning: unused
function 'port_chk_broad_storm' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2278:20: warning: unused
function 'port_cfg_force_flow_ctrl' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2284:19: warning: unused
function 'port_chk_back_pressure' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2290:19: warning: unused
function 'port_chk_force_flow_ctrl' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2298:20: warning: unused
function 'port_cfg_rx' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2304:20: warning: unused
function 'port_cfg_tx' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2315:20: warning: unused
function 'sw_flush_dyn_mac_table' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2326:20: warning: unused
function 'port_cfg_ins_tag' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2332:20: warning: unused
function 'port_cfg_rmv_tag' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2338:19: warning: unused
function 'port_chk_ins_tag' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2344:19: warning: unused
function 'port_chk_rmv_tag' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2350:20: warning: unused
function 'port_cfg_dis_non_vid' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2356:20: warning: unused
function 'port_cfg_in_filter' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2362:19: warning: unused
function 'port_chk_dis_non_vid' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2368:19: warning: unused
function 'port_chk_in_filter' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2411:20: warning: unused
function 'sw_cfg_unk_def_deliver' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2417:19: warning: unused
function 'sw_cfg_chk_unk_def_deliver' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2423:20: warning: unused
function 'sw_cfg_unk_def_port' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2428:19: warning: unused
function 'sw_chk_unk_def_port' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2459:19: warning: unused
function 'port_chk_diffserv' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2465:19: warning: unused
function 'port_chk_802_1p' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2471:19: warning: unused
function 'port_chk_replace_vid' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2477:19: warning: unused
function 'port_chk_prio' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2689:20: warning: unused
function 'sw_get_addr' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2906:20: warning: unused
function 'hw_r_phy_link_stat' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2911:20: warning: unused
function 'hw_r_phy_auto_neg' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2916:20: warning: unused
function 'hw_w_phy_auto_neg' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2921:20: warning: unused
function 'hw_r_phy_rem_cap' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2926:20: warning: unused
function 'hw_r_phy_crossover' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2931:20: warning: unused
function 'hw_w_phy_crossover' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2936:20: warning: unused
function 'hw_r_phy_polarity' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2941:20: warning: unused
function 'hw_w_phy_polarity' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2946:20: warning: unused
function 'hw_r_phy_link_md' [-Wunused-function]
drivers/net/ethernet/micrel/ksz884x.c:2951:20: warning: unused
function 'hw_w_phy_link_md' [-Wunused-function]
drivers/net/ethernet/myricom/myri10ge/myri10ge.c:1177:20: warning:
unused function 'myri10ge_vlan_ip_csum' [-Wunused-function]
drivers/net/ethernet/sun/cassini.c:240:20: warning: unused function
'cas_lock_all' [-Wunused-function]
drivers/net/ethernet/sun/cassini.c:269:20: warning: unused function
'cas_unlock_all' [-Wunused-function]
drivers/net/ethernet/tehuti/tehuti.c:1368:19: warning: unused function
'bdx_tx_db_size' [-Wunused-function]
drivers/net/usb/plusb.c:67:1: warning: unused function
'pl_clear_QuickLink_features' [-Wunused-function]
drivers/net/usb/sierra_net.c:357:19: warning: unused function
'sierra_net_is_valid_addrlen' [-Wunused-function]
drivers/net/wireless/ath/ath10k/ce.c:127:1: warning: unused function
'ath10k_get_ring_byte' [-Wunused-function]
drivers/net/wireless/ath/ath10k/ce.c:212:1: warning: unused function
'ath10k_ce_shadow_dest_ring_write_index_set' [-Wunused-function]
drivers/net/wireless/ath/ath10k/ce.c:449:20: warning: unused function
'ath10k_ce_error_intr_enable' [-Wunused-function]
drivers/net/wireless/broadcom/b43legacy/dma.c:130:19: warning: unused
function 'prev_slot' [-Wunused-function]
drivers/net/wireless/broadcom/b43legacy/dma.c:217:19: warning: unused
function 'txring_to_priority' [-Wunused-function]
drivers/net/wireless/broadcom/b43legacy/radio.c:1713:5: warning:
unused function 'freq_r3A_value' [-Wunused-function]
drivers/net/wireless/intel/ipw2x00/ipw2200.c:3010:19: warning: unused
function 'ipw_alive' [-Wunused-function]
drivers/net/wireless/intel/ipw2x00/ipw2200.c:381:19: warning: unused
function '_ipw_read16' [-Wunused-function]
drivers/net/wireless/intel/iwlegacy/3945.c:226:1: warning: unused
function 'il3945_get_tx_fail_reason' [-Wunused-function]
drivers/net/wireless/intel/iwlwifi/mvm/sta.c:1370:18: warning: unused
function 'iwl_mvm_tid_to_ac_queue' [-Wunused-function]
drivers/net/wireless/realtek/rtw88/pci.c:81:21: warning: unused
function 'rtw_pci_get_tx_desc' [-Wunused-function]
drivers/nvme/target/fc.c:151:1: warning: unused function
'nvmet_fc_iodnum' [-Wunused-function]
drivers/nvme/target/fc.c:157:1: warning: unused function
'nvmet_fc_fodnum' [-Wunused-function]
drivers/pci/hotplug/shpchp_hpc.c:177:20: warning: unused function
'shpc_writeb' [-Wunused-function]
drivers/pcmcia/yenta_socket.c:147:18: warning: unused function
'exca_readw' [-Wunused-function]
drivers/scsi/aacraid/aachba.c:1880:19: warning: unused function
'aac_get_safw_phys_device_type' [-Wunused-function]
drivers/scsi/cxgbi/libcxgbi.c:2287:19: warning: unused function
'csk_print_port' [-Wunused-function]
drivers/scsi/cxgbi/libcxgbi.c:2298:19: warning: unused function
'csk_print_ip' [-Wunused-function]
drivers/scsi/myrb.c:2557:20: warning: unused function
'DAC960_LA_gen_intr' [-Wunused-function]
drivers/scsi/myrb.c:2591:20: warning: unused function
'DAC960_LA_ack_mem_mbox_intr' [-Wunused-function]
drivers/scsi/myrb.c:2609:20: warning: unused function
'DAC960_LA_mem_mbox_status_available' [-Wunused-function]
drivers/scsi/myrb.c:2632:20: warning: unused function
'DAC960_LA_intr_enabled' [-Wunused-function]
drivers/scsi/myrb.c:2661:29: warning: unused function
'DAC960_LA_read_status_cmd_ident' [-Wunused-function]
drivers/scsi/myrb.c:2834:20: warning: unused function
'DAC960_PG_gen_intr' [-Wunused-function]
drivers/scsi/myrb.c:2868:20: warning: unused function
'DAC960_PG_ack_mem_mbox_intr' [-Wunused-function]
drivers/scsi/myrb.c:2886:20: warning: unused function
'DAC960_PG_mem_mbox_status_available' [-Wunused-function]
drivers/scsi/myrb.c:2908:20: warning: unused function
'DAC960_PG_intr_enabled' [-Wunused-function]
drivers/scsi/myrb.c:2938:1: warning: unused function
'DAC960_PG_read_status_cmd_ident' [-Wunused-function]
drivers/scsi/myrb.c:3112:20: warning: unused function
'DAC960_PD_gen_intr' [-Wunused-function]
drivers/scsi/myrb.c:3158:20: warning: unused function
'DAC960_PD_intr_enabled' [-Wunused-function]
drivers/scsi/myrs.c:2416:20: warning: unused function
'DAC960_GEM_gen_intr' [-Wunused-function]
drivers/scsi/myrs.c:2460:20: warning: unused function
'DAC960_GEM_ack_mem_mbox_intr' [-Wunused-function]
drivers/scsi/myrs.c:2483:20: warning: unused function
'DAC960_GEM_mem_mbox_status_available' [-Wunused-function]
drivers/scsi/myrs.c:2505:20: warning: unused function
'DAC960_GEM_intr_enabled' [-Wunused-function]
drivers/scsi/myrs.c:2533:30: warning: unused function
'DAC960_GEM_read_cmd_ident' [-Wunused-function]
drivers/scsi/myrs.c:2682:20: warning: unused function
'DAC960_BA_gen_intr' [-Wunused-function]
drivers/scsi/myrs.c:2718:20: warning: unused function
'DAC960_BA_ack_mem_mbox_intr' [-Wunused-function]
drivers/scsi/myrs.c:2737:20: warning: unused function
'DAC960_BA_mem_mbox_status_available' [-Wunused-function]
drivers/scsi/myrs.c:2755:20: warning: unused function
'DAC960_BA_intr_enabled' [-Wunused-function]
drivers/scsi/myrs.c:2782:30: warning: unused function
'DAC960_BA_read_cmd_ident' [-Wunused-function]
drivers/scsi/myrs.c:2932:20: warning: unused function
'DAC960_LP_gen_intr' [-Wunused-function]
drivers/scsi/myrs.c:2968:20: warning: unused function
'DAC960_LP_ack_mem_mbox_intr' [-Wunused-function]
drivers/scsi/myrs.c:2987:20: warning: unused function
'DAC960_LP_mem_mbox_status_available' [-Wunused-function]
drivers/scsi/myrs.c:3005:20: warning: unused function
'DAC960_LP_intr_enabled' [-Wunused-function]
drivers/scsi/myrs.c:3031:30: warning: unused function
'DAC960_LP_read_cmd_ident' [-Wunused-function]
drivers/scsi/qla2xxx/qla_nx.c:384:1: warning: unused function
'qla82xx_pci_set_crbwindow' [-Wunused-function]
drivers/scsi/qla4xxx/ql4_nx.c:3654:1: warning: unused function
'flash_data_addr' [-Wunused-function]
drivers/staging/comedi/drivers/cb_pcidas64.c:232:19: warning: unused
function 'analog_trig_low_threshold_bits' [-Wunused-function]
drivers/staging/comedi/drivers/cb_pcidas64.c:383:28: warning: unused
function 'dma_chain_flag_bits' [-Wunused-function]
drivers/staging/isdn/gigaset/bas-gigaset.c:241:21: warning: unused
function 'usb_pipetype_str' [-Wunused-function]
drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c:2072:18: warning:
unused function 'ieee80211_SignalStrengthTranslate'
[-Wunused-function]
drivers/staging/rts5208/xd.c:34:19: warning: unused function
'xd_check_err_code' [-Wunused-function]
drivers/tty/isicom.c:369:19: warning: unused function
'__isicom_paranoia_check' [-Wunused-function]
drivers/usb/host/sl811-hcd.c:588:18: warning: unused function
'checkdone' [-Wunused-function]
drivers/usb/host/u132-hcd.c:220:28: warning: unused function
'udev_to_u132' [-Wunused-function]
drivers/usb/serial/quatech2.c:179:19: warning: unused function
'qt2_setdevice' [-Wunused-function]
drivers/usb/typec/tps6598x.c:158:19: warning: unused function
'tps6598x_write16' [-Wunused-function]
drivers/usb/typec/tps6598x.c:163:19: warning: unused function
'tps6598x_write32' [-Wunused-function]
drivers/vhost/vhost.c:52:1: warning: unused function
'vhost_umem_interval_tree_iter_next' [-Wunused-function]
drivers/video/fbdev/arkfb.c:321:18: warning: unused function
'dac_read_reg' [-Wunused-function]
drivers/video/fbdev/arkfb.c:328:20: warning: unused function
'dac_read_regs' [-Wunused-function]
drivers/video/fbdev/aty/aty128fb.c:548:18: warning: unused function
'_aty_ld_8' [-Wunused-function]
drivers/video/fbdev/neofb.c:145:20: warning: unused function
'write_le32' [-Wunused-function]
drivers/video/fbdev/tridentfb.c:1127:20: warning: unused function
'shadowmode_off' [-Wunused-function]
drivers/watchdog/it87_wdt.c:152:20: warning: unused function
'superio_outw' [-Wunused-function]
fs/btrfs/extent-tree.c:2723:19: warning: unused function
'heads_to_leaves' [-Wunused-function]
fs/cifs/dfs_cache.c:317:20: warning: unused function
'is_sysvol_or_netlogon' [-Wunused-function]
fs/dlm/lock.c:238:19: warning: unused function 'is_granted' [-Wunused-function]
fs/lockd/xdr.c:109:1: warning: unused function 'nlm_encode_oh'
[-Wunused-function]
fs/nfsd/nfs4state.c:6034:1: warning: unused function 'end_offset'
[-Wunused-function]
fs/ocfs2/dlm/dlmrecovery.c:129:20: warning: unused function
'dlm_reset_recovery' [-Wunused-function]
fs/xfs/xfs_sysfs.c:72:1: warning: unused function 'to_mp' [-Wunused-function]
kernel/locking/rwsem.c:219:20: warning: unused function
'is_rwsem_reader_owned' [-Wunused-function]
kernel/locking/rwsem.c:284:35: warning: unused function 'rwsem_owner'
[-Wunused-function]
kernel/power/snapshot.c:1260:21: warning: unused function
'saveable_highmem_page' [-Wunused-function]
kernel/sched/cputime.c:255:19: warning: unused function
'account_other_time' [-Wunused-function]
kernel/sched/fair.c:4383:19: warning: unused function
'cfs_rq_clock_task' [-Wunused-function]
kernel/trace/trace_events_filter.c:1563:1: warning: unused function
'event_set_no_set_filter_flag' [-Wunused-function]
kernel/trace/trace_events_filter.c:1569:1: warning: unused function
'event_clear_no_set_filter_flag' [-Wunused-function]
kernel/trace/trace_events_filter.c:1575:1: warning: unused function
'event_no_set_filter_flag' [-Wunused-function]
kernel/trace/trace_kprobe.c:96:38: warning: unused function
'trace_kprobe_offset' [-Wunused-function]
lib/zlib_inflate/inffast.c:31:1: warning: unused function
'get_unaligned16' [-Wunused-function]
mm/memcontrol.c:4661:20: warning: unused function 'mem_cgroup_id_get'
[-Wunused-function]
mm/slub.c:1401:29: warning: unused function 'slab_free_hook' [-Wunused-function]
mm/slub.c:2007:28: warning: unused function 'tid_to_cpu' [-Wunused-function]
mm/slub.c:2012:29: warning: unused function 'tid_to_event' [-Wunused-function]
mm/zsmalloc.c:479:20: warning: unused function 'set_zspage_inuse'
[-Wunused-function]
net/bluetooth/6lowpan.c:105:35: warning: unused function
'peer_lookup_ba' [-Wunused-function]
net/bluetooth/6lowpan.c:912:20: warning: unused function 'bdaddr_type'
[-Wunused-function]
net/ipv6/exthdrs.c:712:33: warning: unused function 'ipv6_skb_idev'
[-Wunused-function]
net/ipv6/ip6_gre.c:846:20: warning: unused function
'ip6gre_tnl_addr_conflict' [-Wunused-function]
net/sched/sch_choke.c:145:20: warning: unused function
'choke_set_classid' [-Wunused-function]
net/sunrpc/svcauth_unix.c:301:30: warning: unused function
'ip_map_lookup' [-Wunused-function]
net/sunrpc/svcauth_unix.c:330:19: warning: unused function
'ip_map_update' [-Wunused-function]
security/apparmor/file.c:159:20: warning: unused function 'is_deleted'
[-Wunused-function]
security/apparmor/label.c:1230:20: warning: unused function
'label_is_visible' [-Wunused-function]
sound/drivers/portman2x4.c:186:18: warning: unused function
'portman_read_command' [-Wunused-function]
sound/drivers/portman2x4.c:196:18: warning: unused function
'portman_read_data' [-Wunused-function]
sound/pci/asihpi/asihpi.c:261:19: warning: unused function
'hpi_stream_group_get_map' [-Wunused-function]
sound/pci/azt3328.c:368:1: warning: unused function
'snd_azf3328_codec_outl' [-Wunused-function]
sound/pci/rme9652/hdspm.c:6154:19: warning: unused function
'copy_u32_le' [-Wunused-function]
sound/pci/trident/trident_memory.c:109:21: warning: unused function
'offset_ptr' [-Wunused-function]
sound/pci/ymfpci/ymfpci_main.c:34:18: warning: unused function
'snd_ymfpci_readb' [-Wunused-function]

Hope this helps.

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=025960c034eacc433afd366085077991f8ed6e4e

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWmmC7CruvXx6U0cdXMLaMWJadU%3DT61E0om1rOuW3%3D%3Dpw%40mail.gmail.com.
