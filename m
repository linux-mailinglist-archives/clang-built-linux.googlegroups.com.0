Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBXWETH7AKGQEHTD4PQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5673F2CA71B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 16:33:52 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id l14sf1672323ioj.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 07:33:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606836831; cv=pass;
        d=google.com; s=arc-20160816;
        b=VOLzE5zxUeBR/lg1YqScMMXU0JT2798NrjtpF39NcCAbJP2XVyoJnDtbokN3lzpINI
         PPhgsRrik3jAOClT272mVDgd4o0IYIrCXp/JZ7KbMHZ+EB6qQHaTnmclL8qvIwa9dNAh
         fdA9WkoopTTB/PEacO0tc482mMdid1V0196W+bmjwJr/AYK4HaRlarDfCqDMk11alBsr
         5Ljj9f2HI/JPmoNrbXGeAjulWanaWknWeC1SLLgqyEfmFU5NktaS4Pe26Dn0JXgQ3Pza
         nCWUtKjXxrM4OaVokHp40//JqPVIAOvGT3jOj454RVCdzdxdWLVQ8BtpFR6O9/MDTvxq
         nrEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rYTrZ2DTikoOWHIwO1NQY1QX11jH+UAJxrbZtcyhn2A=;
        b=q4SuDflyBwgaRbDGtR+1nPxsLghShOiVtqZ7lVNZ9KeX29B3qaxbPrY91YibPt339G
         lvmmDXUQBuheGyAkxJhcLvUzLhia2QHRIhcKDZNkTC/NZkeVPU9W2FKWh5jqpuP9NR3r
         VmEzi4owwjQd0FBK+Y6FYHqw3+1DwukiV8nOXqKJbeUfBa5zBZyJUZIBhh4UuP/RiQvm
         t601DYh9nKN8Ln6MBf+b42GBVTi6f+Q8NDiAIuWAcR5Tnm02Jip9V2qVfvJsrDH3Xi+A
         HVP6ItUjD9CFXHPRvLjVN1lG9RZ1NbVc3BrdGLvwuFLPHuvX4slVBAMSG/aaMYR4dwXu
         lXcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CtjoYBA0;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2f as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rYTrZ2DTikoOWHIwO1NQY1QX11jH+UAJxrbZtcyhn2A=;
        b=RGnbmjPZBlVY9dMsT2hBq0SFK/JkcDLWWys2TQ2sq5QdOR+UFgq7qcuV358B0epvG/
         0Ii6CcYi5lRuqbWQXzAlwacAzw1Yb+t3PvoGdOpwrA7/N0neKoxKiiHuM7EwVYR2CFa/
         eCcr4gR3XZFCar+s+HdUzBQPCyp5Ki86Z+NZ3es776ga1uUbfvXvOIzcjCvr06MkpyV+
         MH+0gtTRnboKL0pi61pGVH57nOnMJde/TgMkmidaRKgDovfII8/J7c7hbNXv6qUE/6eL
         YJOo+zDsWOE9tIk5jkhI3zvhfDngynlaPBlxUbI1s64I+5PEzRY8XU3REpJ3SE/dmWsB
         xnJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rYTrZ2DTikoOWHIwO1NQY1QX11jH+UAJxrbZtcyhn2A=;
        b=K4VH31FK9UnPG7qcOMmpsIVytKE6jx5E/sevmXQgZZ11qdoVdk0c8c5ysHCmp05rqv
         S86gP0/OLQFrXpkVMayGzfXJ/LWkxYYmzcfBStbTdv1O6rfRSC4PBSNCXG9i1JBmAuHz
         RnWg1TmLFiraPuRxGyCZPT/ia6Loq4OuzRaywYFRrcuKKUSAfksH1sLEyQ+w88v1aqaw
         ue+0D8lLVsdtJTMiU7/lG4oIV6uQwRmahM0LPcLpuXUybKu6jmZyn6D2gBLcFi27Vn3P
         7bNslWtzno6cLLKuXv2qxFQ2bLVGYR01pA3040I10tUEIRDB/PzKN9lL9r0S4NJL+IpG
         8WIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rYTrZ2DTikoOWHIwO1NQY1QX11jH+UAJxrbZtcyhn2A=;
        b=F9/vGtG0mS7rBhPdcK2mpWKFjywQku5vu7/jJtSyL28k7aLUbs8eug98ces90ioKlR
         dpV5tnFn/8xaDc8ebWVwrx6/y/IIjMRnzaqxyOwxp+UleoVZev/vP3vfZGAzIqZaN8+i
         1XRnwLINoWrRfwvNJRVRAy3tl16ftbNhnwACi/3AsCr+yVaA2eH4uKBCtVsp3o+GT8tp
         p5EWxDNQjBKy6azNtGog4GMqoos5uvx1zPHzjMvqP0BMioB5tTYjrVri4ChFrGAx41So
         BzEJ7iiFNDauu2BN+eqJ7T6GetVZesDU/XofwjB3Xe5LxxAuiK6BOMf/TUjpmGRTHy7V
         3YzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZZWfjiuiu66nRIpV2fFWCUP7AxsPpKx/NMalz7TtQ6lb8KnUd
	QyCv5D1nvDGeUUDpDVjBfhA=
X-Google-Smtp-Source: ABdhPJw3VsZcn6RKOB/bky0f3Yj4BFYup2UhxNiuhBNOTN6Jd76oD4hl5DRapwAr423qH+Dj3hWWdQ==
X-Received: by 2002:a05:6638:22bc:: with SMTP id z28mr3085395jas.62.1606836831007;
        Tue, 01 Dec 2020 07:33:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1656:: with SMTP id a22ls305189jat.7.gmail; Tue, 01
 Dec 2020 07:33:50 -0800 (PST)
X-Received: by 2002:a02:bb86:: with SMTP id g6mr1188121jan.104.1606836830602;
        Tue, 01 Dec 2020 07:33:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606836830; cv=none;
        d=google.com; s=arc-20160816;
        b=x2XwexmPGKfGxafRLyeDLcxHgjlArTHDv73Lm1E8r1igO0l5Ny2Hud6i+zWKrSTaaN
         QyJcNgGYix0NK8QGWGyk4ryrnvW64/32wUnTAAOs2ZiuJ1L9fiXotRXbQXd+2mPfXwg2
         9BnWAE3L2NXuvpShtgCPiPpGzRJABIjjNdl2wrK6c7SiOMMQahZDYqwBYoEhUAxY4j8W
         Hn78DMjwgnF2+krXXYZnho02xrMDD9E0erhfyLgoF+oHFgqSfj4Kj1/RxE1DwvoBFVvi
         tErJl50xxujAB+/acqhwqmgQqEZMar5X4RplgWYuqfL6AEhrwye6H3mR4eX/H1vloSh1
         bfcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1WdbUv0lYoTasZTXqN2gzfeJOoYPDA/D6fgmsqfBgoM=;
        b=pTXwK0YxwN2z5jDN1WELB9XNowvWXY6hUqcZjWbY0OF9N1sZwfGMnlCF5iW9CDp1eA
         Hkx8Yqaad6WbFFuvprYJJ/mO+WThVM6uBPNbHA7KFlXzRgdf/f+nDmaFyV98fJuaxlHD
         l45kFpXVju3gBw/o8uwLBSs79BQhzlRKXKgJhJ8Pzr/B4dHaus/8rx5FaWGpyZwSaGLN
         7z15oUPM5LhfPKSgyQqeNReb+bE6cY2bhXAjTTp51/ggz2m9mfaaIZsh2n6irdERJPuS
         uK69BIUuN+yuaJbKijfDNl2KOTUHedjZeUZh4gQ3W4jq5kwiwYmI9+6Z7QDiCwehQvZT
         mffQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CtjoYBA0;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2f as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com. [2607:f8b0:4864:20::a2f])
        by gmr-mx.google.com with ESMTPS id k131si1668iof.1.2020.12.01.07.33.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 07:33:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2f as permitted sender) client-ip=2607:f8b0:4864:20::a2f;
Received: by mail-vk1-xa2f.google.com with SMTP id a4so518045vko.11
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 07:33:50 -0800 (PST)
X-Received: by 2002:a1f:9a81:: with SMTP id c123mr2812692vke.23.1606836829966;
 Tue, 01 Dec 2020 07:33:49 -0800 (PST)
MIME-Version: 1.0
References: <202012011752.GjKoR8tI-lkp@intel.com>
In-Reply-To: <202012011752.GjKoR8tI-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 1 Dec 2020 21:03:38 +0530
Message-ID: <CAFqt6zZNSEVq6R4rUsD+bqZLwrXRD9F3C3ysq98be5aMyG-u4g@mail.gmail.com>
Subject: Re: [linux-next:master 1048/9613] drivers/gpu/drm/amd/amdgpu/amdgpu_fw_attestation.c:115:37:
 warning: unused variable 'amdgpu_fw_attestation_debugfs_ops'
To: kernel test robot <lkp@intel.com>
Cc: John Clements <john.clements@amd.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Alex Deucher <alexander.deucher@amd.com>, 
	Hawking Zhang <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CtjoYBA0;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2f
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
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

On Tue, Dec 1, 2020 at 2:36 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi John,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
> commit: 19ae333001b375bbc7d1ff9eaa9cbb0a72fff65e [1048/9613] drm/amdgpu: added support for psp fw attestation
> config: arm64-randconfig-r006-20201201 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ac40a2d8f16b8a8c68fc811d67f647740e965cb8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=19ae333001b375bbc7d1ff9eaa9cbb0a72fff65e
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 19ae333001b375bbc7d1ff9eaa9cbb0a72fff65e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    drivers/gpu/drm/amd/amdgpu/amdgpu_fw_attestation.c:130:6: warning: no previous prototype for function 'amdgpu_fw_attestation_debugfs_init' [-Wmissing-prototypes]
>    void amdgpu_fw_attestation_debugfs_init(struct amdgpu_device *adev)
>         ^
>    drivers/gpu/drm/amd/amdgpu/amdgpu_fw_attestation.c:130:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void amdgpu_fw_attestation_debugfs_init(struct amdgpu_device *adev)
>    ^
>    static

A prototype needs to be added. I think, entire
amdgpu_fw_attestation_debugfs_init() and future callers can be written
under CONFIG_DEBUG_FS.

> >> drivers/gpu/drm/amd/amdgpu/amdgpu_fw_attestation.c:115:37: warning: unused variable 'amdgpu_fw_attestation_debugfs_ops' [-Wunused-const-variable]
>    static const struct file_operations amdgpu_fw_attestation_debugfs_ops = {
>                                        ^
>    drivers/gpu/drm/amd/amdgpu/amdgpu_fw_attestation.c:122:12: warning: unused function 'amdgpu_is_fw_attestation_supported' [-Wunused-function]
>    static int amdgpu_is_fw_attestation_supported(struct amdgpu_device *adev)
>               ^
>    3 warnings generated.

CONFIG_DEBUG_FS is not enabled which triggers these warnings.

>
> vim +/amdgpu_fw_attestation_debugfs_ops +115 drivers/gpu/drm/amd/amdgpu/amdgpu_fw_attestation.c
>
>    114
>  > 115  static const struct file_operations amdgpu_fw_attestation_debugfs_ops = {
>    116          .owner = THIS_MODULE,
>    117          .read = amdgpu_fw_attestation_debugfs_read,
>    118          .write = NULL,
>    119          .llseek = default_llseek
>    120  };
>    121
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zZNSEVq6R4rUsD%2BbqZLwrXRD9F3C3ysq98be5aMyG-u4g%40mail.gmail.com.
