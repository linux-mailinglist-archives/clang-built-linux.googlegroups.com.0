Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKPD436AKGQEMKGC3PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C69429D164
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 19:00:10 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id h7sf1918357otn.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 11:00:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603908009; cv=pass;
        d=google.com; s=arc-20160816;
        b=vBtN/agVmayeI22Y9OFeoiIWOuVXq5K7Jgkgxe/Om179NOv3bClUV/NTgl9h8g1QBt
         +ELYgWpaUQOoD6r4wAi0CpwXjoIV6o72tTmhuNbQLyLB5E0lFHmCrTWmZWflPzx0rGw5
         IPZmuqIA1J8lh2ZKoU3p6DAbuluNrbWuOlm8kKWH9iJO7xj+PTVnaZ5XootMuTqZbGkZ
         n9V9r3uVZGZqXA6vIzCUZO7mdx9ngtke/QQQronRfqmBBugmGVWB9U0TL56VpRGID8u7
         8qkTE0nDS/ufroUq+LxmkMg3dTAA+yqIB9//wsyxE+HpCYXELkSiHJgWSSVvxWyphYqL
         OBfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=R0VWDU7J3C2uttPPt62ao4M6YjjJXbnv2jjGoZS5mMs=;
        b=eCPk7uiRsi/Ml8vhz6yRRUibc51NdZ1jmgw93/z/j43UVYePiMY/M0X4WVoRPaLdtd
         E4mnAGvHCHFhuG0BiJqLkLS0RpS/lrBAzFBE29+IjMEW+zHe7g3OZFg5ho72LGWKQIGi
         G7PWUMIZkOYAPg4S/1cUm5uM0TWzVC2M2kwBJjb5mcABuJTYNa53F/2tUTskbgjjWcXW
         XRNnHuAOkA5TZZL/8Hj10B5ulSbxexdHfmsWrZttmPTx31U9I62Rv4cJJ4/s8T6R+oZX
         xd5iRqxqkupAyi0OMjBja82Zgoi58kQ4Hsqm2rT5WSgiSfJOYtxvccsB7gXidiKgFnUC
         DPlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="fGox/Xin";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R0VWDU7J3C2uttPPt62ao4M6YjjJXbnv2jjGoZS5mMs=;
        b=BEU74ABJ2srky5niDjtf0/GcHA+PB4OZ2wt+7494UrUOM3IrSrTc9L+9UWM+mux8Wd
         QA0/phJOVDhdgHSHVSGAoHOD0WMGWKbEKGajrHjmyQg+IS330bBTUls5DGJPJgru1b0R
         jzduQJ883QBQLeexhrSYF6h+bKzwXIZH52khIg7AdiSeemadEi/KznawUOM+rHpodh6e
         Tcs6p49popJOwQWUt7ZnHpN8hKSpEjbmJ7kTEuReohxqshj+BE+dD6Agnz+AkOC/mEyl
         dNEzmVrVd80ym3tTM/mYL+wFYL9rYrslFkdgXTopMs01VBNkBXtpm+5ltsb0CRea2t6X
         wiUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R0VWDU7J3C2uttPPt62ao4M6YjjJXbnv2jjGoZS5mMs=;
        b=GxqDMYZORwCkLxt+5RQNggxEroQCmdVc3oNik4Jfdlbw8gRYo+T3mqaaJbGHaSq1yC
         SejQoY2VdzQHykrkQiJRE3qpqJ7zlbEPbwmpZbRs93E9WQNMhYUgLayvjJdRw5zhRSuo
         vNGTJsjaO3/106FAwQdBh7R+ZJxAOkGkW9VEU7nv1tvgTfj673DqHCjbnDrVgUM9Ff2K
         kwjwwA+kMmY3Q1nh6g8S3+1P3D0tQNtRap0A9MoWL+2BfD+6JqAa45rHetDgyXWZXaSp
         C1VXyUoLtNLPT0RL+Yob/q9JyJG6drcYPUZoXNmgQMMmR6KvNeEFTWCztErC4ql9FJ9z
         b0Dw==
X-Gm-Message-State: AOAM531t49g6zFn0ZL68+6TsfkMsyeoGuw6T+CNZX8NFgsbWJ+puUQ6N
	pfxf8oFN42WfWOcgWDNjltM=
X-Google-Smtp-Source: ABdhPJxJN3y7qgX/oe6K+32tjZqcQlAEfPmGll8+mXKybIMHP3YV4+xcrb0DBy2rMh9RLVevHq2gyQ==
X-Received: by 2002:aca:4246:: with SMTP id p67mr102925oia.109.1603908009256;
        Wed, 28 Oct 2020 11:00:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:1a84:: with SMTP id 126ls4700oof.11.gmail; Wed, 28 Oct
 2020 11:00:08 -0700 (PDT)
X-Received: by 2002:a4a:2e16:: with SMTP id x22mr115679ool.84.1603908008874;
        Wed, 28 Oct 2020 11:00:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603908008; cv=none;
        d=google.com; s=arc-20160816;
        b=EclPoo1RFvMzrX3WXnNW+5f8iSCmP5psi4SdHd7USfAJcYNNiHd+G7ZbaR967rCpVJ
         QtS0ZDV1WM2pUNEyAI+tKjMZw0R6sLnGSNJIWrevTP4SFyScP1joro/B2wZFAcDq5k6d
         EZqyB0JfIBLAklaw41uGJCxU5vR5DmXBbdBRrmDaHJRVWhb/piws14KggYbkAjOHqa7r
         wYBIBYQ1mD+nIrYetWJU+hxBukmLQL0Xts7K+thBXRoFdrF/klONQwTSavjkzgfy55GB
         HQDXfnG+4MBK5T1OL+V0hC0fQ1J/yNUSOtIux1AYnwwYHIUjyXaay8/eJTAgJBsTiWId
         jeyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AV4ipJ1MHMPy5G8vuWY1OhLwlttiK0J6JeltRFd8/Sg=;
        b=hcp6Rb+9cEuQV26/d5cc/x8UDiHV/00E5k8RbWAtjKJQn/zh4/e3FEuZdERqvM9wRx
         RjoF5kyVKu3jcVgb+JI0WL4G7hGRQCaX8CvIGySu1KWS5MuK7EpKqjIHQx66s9jVPAJ6
         faQnZW4FXRjKgc2h4LhMXNEZSutUdLuxGJ5nAdm8rNVbcw+XyNP79kRlxtvDj3zSyI7d
         CCHR07zODHDuq6k3L2pnI6AO78TfGunvepEX2JUlMwYZbGb8N+xJ3OckKEC+PjjsqF6k
         ZW6UshSO2PiL4u+zeZ0YrZbluPwEo+86ZMR+EbihjPnTPpxFONyISuukn/8hR4fGoB/y
         VjtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="fGox/Xin";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id j78si11462oib.5.2020.10.28.11.00.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 11:00:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id h4so216217pjk.0
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 11:00:08 -0700 (PDT)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr118497pjj.101.1603908007757;
 Wed, 28 Oct 2020 11:00:07 -0700 (PDT)
MIME-Version: 1.0
References: <202010281330.KCaqOzGW-lkp@intel.com>
In-Reply-To: <202010281330.KCaqOzGW-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Oct 2020 10:59:56 -0700
Message-ID: <CAKwvOdkkTLFtk-NSsaVaz=f-xqmOTukozEns2DKtnEj3JuZSkA@mail.gmail.com>
Subject: Re: [PATCH] bpf: don't rely on GCC __attribute__((optimize)) to
 disable GCSE
To: Ard Biesheuvel <ardb@kernel.org>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="fGox/Xin";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

+ Ard

(I think we knew about this in the v1, but just cc'ing you since 0day
bot did not)

On Tue, Oct 27, 2020 at 10:39 PM kernel test robot <lkp@intel.com> wrote:
>
> In-Reply-To: <20201027205723.12514-1-ardb@kernel.org>
> References: <20201027205723.12514-1-ardb@kernel.org>
> TO: Ard Biesheuvel <ardb@kernel.org>
> TO: linux-kernel@vger.kernel.org
> CC: netdev@vger.kernel.org
> CC: bpf@vger.kernel.org
> CC: arnd@arndb.de
> CC: Ard Biesheuvel <ardb@kernel.org>
> CC: Nick Desaulniers <ndesaulniers@google.com>
> CC: Arvind Sankar <nivedita@alum.mit.edu>
> CC: Randy Dunlap <rdunlap@infradead.org>
> CC: Josh Poimboeuf <jpoimboe@redhat.com>
> CC: Thomas Gleixner <tglx@linutronix.de>
>
> Hi Ard,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on bpf-next/master]
> [also build test WARNING on bpf/master linus/master linux/master v5.10-rc1 next-20201027]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Ard-Biesheuvel/bpf-don-t-rely-on-GCC-__attribute__-optimize-to-disable-GCSE/20201028-045850
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> config: x86_64-randconfig-a001-20201026 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f2c25c70791de95d2466e09b5b58fc37f6ccd7a4)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/edebf279098c74782e939d735bd82311c0030968
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Ard-Biesheuvel/bpf-don-t-rely-on-GCC-__attribute__-optimize-to-disable-GCSE/20201028-045850
>         git checkout edebf279098c74782e939d735bd82311c0030968
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> clang-12: warning: optimization flag '-fno-gcse' is not supported [-Wignored-optimization-argument]
>    kernel/bpf/core.c:1358:12: warning: no previous prototype for function 'bpf_probe_read_kernel' [-Wmissing-prototypes]
>    u64 __weak bpf_probe_read_kernel(void *dst, u32 size, const void *unsafe_ptr)
>               ^
>    kernel/bpf/core.c:1358:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    u64 __weak bpf_probe_read_kernel(void *dst, u32 size, const void *unsafe_ptr)
>    ^
>    static
>    1 warning generated.
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010281330.KCaqOzGW-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkkTLFtk-NSsaVaz%3Df-xqmOTukozEns2DKtnEj3JuZSkA%40mail.gmail.com.
