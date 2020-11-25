Return-Path: <clang-built-linux+bncBDM3FG7YWUNBB4WO7L6QKGQEXADNTNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF9F2C47EA
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 19:50:27 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id o130sf1681801oig.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 10:50:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606330226; cv=pass;
        d=google.com; s=arc-20160816;
        b=RViBTp+lv5m27fSPrFrChSe+CZXDCzUcltjIHZnQDGxn+ZoQrZ8DboIYzKoZFEo2af
         U46YTHJKJxcUSPxA8vfJescx71OfOe9h4QSsSInBc1icNsbLdEHKy+OQo6MG3MLG6pTP
         qseDmv3em31xgwZbGa6SH0nMzsUbSn8XdzsrNHSkNbzFVJ4qhM3r3L+m1HRk6gIfaSLO
         H3n2nxjkbcQOKbBMwyPxGBbTeEzzOM1pm7K1R76GaOtKrEOVvfsWqam44/29ybD3p9sa
         cLZo2+kb0htwKz+Ac8YX3WpWXc2bbOkCdSFk5Mt3HQnZ/EZ/2hPHGBIaYXAXJ/myNxXr
         CFBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=M4LCFvn16688bp+JGG1PnEEzGnvS4jfXABK5sTPBN00=;
        b=VHzkX+f+PGrBoPv+8FQGKKgWBz9SR54nbHdzJUcPIX5S+ZvgfmX3eZor+bjvLVFcCM
         xicqQpxkq4gceRdGd9Rovibi3Itl66b8Z0UQmv6oiJjg0dZmuEzVoDr8fazNyX8ZGqEe
         Mj9j1BNa3pId7sZq7ozVdgNS+/9zMm+Dz/GcnviP6s/dV71FYZ4oNFH3dYjhMYpPToL2
         L5So0ZbrGTD48ijuq4S3LquHpJNlTNoj/0nXmkp+ojXn8i+lBOmi8ciqeCa6yEFSVmN1
         /cR5QbG6f3FyEfumURXEVih9E6yMKwwVghrY7maPPkohusnhevpCrJJdc+bOc1v1TLA6
         i58w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7qQCOUn;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4LCFvn16688bp+JGG1PnEEzGnvS4jfXABK5sTPBN00=;
        b=X9xZsgQJQLGUKiDQWK5BFy2zHQw60nVn+7Yh+VG7DZ67f7uNwp1I+RuvWe7EyLMbyP
         1KgDjF/MYingiQ1nj66kv1nZFPTSBdEu1H1EmIsxrMp0BAxoI1NjAzerw5VVDowmKs0A
         kNyuW8zJH7/fcXddrXdCIZPnshkE41NZgphkGl3CjT8w01eGFG8ESvwQCnaVb0S+sOOQ
         A1CJQTjQZvs6GsxoDNogNwPse8uNVyUkgjbH467bPtdUFGikHTpoFkOr09SXIqo1c/mv
         xqYiVdwbd2LiJ3aKonK3eE8l141C9Q/2WmYfqTC1QMswfyGKmzqIQFtaLYIfv7mnN24q
         pw4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4LCFvn16688bp+JGG1PnEEzGnvS4jfXABK5sTPBN00=;
        b=OreRQTczgYXFrpNCOlbKEplLlQQDZI/+UBHDWAIz/9k9tlhxw4Xy6h2qQP566GyzfZ
         dZmocRfoMdwp6lIdDJ3VrizS9DFPlkRjG7rcDEXHugBU54rCIZKWnbmfTLxQ4fTFjcxp
         fDQDs6POhNsi4tf2gU3NgTpi2zPs7Ag8oK4XHGlGUQPrCITmOoUC1Zy2tGJduceN5HSN
         FiIBM8Eime0hevzKyfJ3/dm1AelM8Ko/hX5XD4r0jGX5cUweVEPxx6ZcHpuljX1bTGsz
         SGiG6pvmD2vt/A1RlXpbeCLXGEuNaFfLlO3/Lo6IuRaNioB1FFn+rc5yCUTQkTqxXzeV
         eDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4LCFvn16688bp+JGG1PnEEzGnvS4jfXABK5sTPBN00=;
        b=VO/CV2a1wfSbWRYTBRnikpuTAxptlX+DTinGoms+rXb0d7X8u5Dl+zBFqLFJKQUrcg
         yaDCzUUpXTboWApzSNMsEuzclQ+UqosbHc9Awwb1HOEnTsmPPT1KSfmhPvrszMe5HMsq
         8eqTlfehFFAQsujFheG9rZJbB+gJIXymFGcGHmW8MElm2urBpjpzTbjGZxJVl6bWrc2m
         4uqUsYr4yQ1pH16rEUyCLjKnGrNsaIM5mmgV9wCuz0eiDpuYQ/L4QVYqZG5it8HFc1MW
         CpVzGBdq/dbVQ1yHzhmozhTOCpLVuVw8MbGHSvkIheWYRaowubxggRPlwjhLe7k+XJCU
         fhVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ya/ecRTTt7T3N1ovkzKpuV0q8yx3DXcY/o8jnWH5rHAQpg5lW
	hhxTapcl+DBT/W4ofsbZ3Hs=
X-Google-Smtp-Source: ABdhPJwA5cKZuUEMUsrZvOm/M8+kWGBDQ5eDEXcW1tcEr6PG/9FjGw6vBHSMtqv5Ata7pgP3sTp7qQ==
X-Received: by 2002:aca:5710:: with SMTP id l16mr3261105oib.24.1606330226247;
        Wed, 25 Nov 2020 10:50:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a95:: with SMTP id l21ls751999otq.4.gmail; Wed, 25 Nov
 2020 10:50:25 -0800 (PST)
X-Received: by 2002:a9d:3b4:: with SMTP id f49mr4017666otf.188.1606330225793;
        Wed, 25 Nov 2020 10:50:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606330225; cv=none;
        d=google.com; s=arc-20160816;
        b=Cr9ZZ628yo4JNVvAWpvmK+pCcyBbNDnDmSr5vkNC3FwrF/h0y85SYFVC30s0yCtEwM
         Ae09ZL1y1L96eU5yfLvWw4bWmXndrVCD/9w1fFfYlDrDY4wFe7FkWWeqmneYLqJBeD8w
         +KcbgyorKQOtHD6E0jg0gVxAbJZeWm63VyA0XS0XyI8rkc5piDf5SYNudHLUVFINh/GN
         vtlrQ92nQVa2gLWboxJypeVcldhfm0jm+EPSXFugdmTyKzdwucjbR3bWqy/0dxakj6b4
         H59ESv2itKSQgA0YXi/2iVLUbou0DyWDQIVidXR03w0Q9jz6/MvUSH4zhrEyfi6AG1Yw
         7SBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VnASejwj7ZYwHThT8OV4Id2cZ5O9haxKGdtLGYLwKH8=;
        b=IGhiZOXa6GjisQNplk5/yUbOAAzEkgP/RIYMeB8TmT7EgdK9X2MH3lfk4ysPG4IAag
         0zCgSkABYIRzjmfoCLJwwIS9qMhIt6KUbwHf9Kn67LEtcLl/uaYt3HO4yHzPXns53Kaz
         kv/Q78iJVPv9wjageFOask9zfzJkIUK/D9bJ4I22eiR+4XXWXvLMqTCby1cdPDIpfR6+
         5Y2gks5h2+c+FvqE31Rd8KK+4xuc8e122zf3McF1iuZeZJYTtxPqDFoI+ptqf/553ENU
         tm9O3viJfgJNpuld/j+EMnBD8dbAF8kmpyGrqhPiQWm5fwD32CYZy5t/wMoQb1ZQ0MBS
         MlgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q7qQCOUn;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id e13si192523oth.3.2020.11.25.10.50.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 10:50:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id u24so1729067vsl.9
        for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 10:50:25 -0800 (PST)
X-Received: by 2002:a67:fb87:: with SMTP id n7mr3224178vsr.58.1606330225227;
 Wed, 25 Nov 2020 10:50:25 -0800 (PST)
MIME-Version: 1.0
References: <202011242358.oKOU8SIP-lkp@intel.com> <CAFqt6zZekYGmkDrANsCrRs3Z5DMhCUqA-yi9ipC6JRYTvGfE5w@mail.gmail.com>
 <X76LIAy1kMKydnc0@builder.lan>
In-Reply-To: <X76LIAy1kMKydnc0@builder.lan>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Thu, 26 Nov 2020 00:20:13 +0530
Message-ID: <CAFqt6zaSN2B0xhrr-wCPSQJb+nQg=rGP04fFLe-FyfbiXywsEg@mail.gmail.com>
Subject: Re: [linux-next:master 2224/7715] drivers/remoteproc/mtk_scp.c:755:37:
 warning: unused variable 'mt8183_of_data'
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: kernel test robot <lkp@intel.com>, Alexandre Courbot <acourbot@chromium.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, linux-remoteproc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q7qQCOUn;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e43
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

On Wed, Nov 25, 2020 at 10:19 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Wed 25 Nov 09:24 CST 2020, Souptick Joarder wrote:
>
> > On Tue, Nov 24, 2020 at 8:34 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   d9137320ac06f526fe3f9a3fdf07a3b14201068a
> > > commit: b8ba904503311036dfeb758d81ef8d1be37cb8fc [2224/7715] remoteproc/mtk_scp: surround DT device IDs with CONFIG_OF
> > > config: arm-randconfig-r003-20201124 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm cross compiling tool for clang build
> > >         # apt-get install binutils-arm-linux-gnueabi
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b8ba904503311036dfeb758d81ef8d1be37cb8fc
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout b8ba904503311036dfeb758d81ef8d1be37cb8fc
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/remoteproc/mtk_scp.c:755:37: warning: unused variable 'mt8183_of_data' [-Wunused-const-variable]
> > >    static const struct mtk_scp_of_data mt8183_of_data = {
> > >                                        ^
> > > >> drivers/remoteproc/mtk_scp.c:765:37: warning: unused variable 'mt8192_of_data' [-Wunused-const-variable]
> > >    static const struct mtk_scp_of_data mt8192_of_data = {
> > >                                        ^
> > >    2 warnings generated.
> >
> > These 2 variables are used when CONFIG_OF is defined and CONFIG_OF is
> > not enabled
> > in the attached config file.
> >
> > So mt8183_of_data & mt8192_of_data need to move under CONFIG_OF.
> >
> > I will post a patch.
> >
>
> We had the same warning on mtk_scp_of_match last week and I merged
> Alexandre's fix without giving it much thought. Extending the CONFIG_OF
> guard to also cover the references mtk_scp_of_data would mean that we
> now have 10 unused functions instead.
>
> On the flip-side, there's no harm in just dropping the of_match_ptr()
> wrapping of mtk_scp_of_match in the definition of mtk_scp_driver and we
> avoid this whole problem.  We "waste" a little bit of memory in the
> COMPILE_TEST case, but we get compile testing of those functions as
> well.

Ok. will do it.


> >
> >
> > >
> > > vim +/mt8183_of_data +755 drivers/remoteproc/mtk_scp.c
> > >
> > > 63c13d61eafe460 Erin Lo      2019-11-12  754
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21 @755  static const struct mtk_scp_of_data mt8183_of_data = {
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  756    .scp_before_load = mt8183_scp_before_load,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  757    .scp_irq_handler = mt8183_scp_irq_handler,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  758    .scp_reset_assert = mt8183_scp_reset_assert,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  759    .scp_reset_deassert = mt8183_scp_reset_deassert,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  760    .scp_stop = mt8183_scp_stop,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  761    .host_to_scp_reg = MT8183_HOST_TO_SCP,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  762    .host_to_scp_int_bit = MT8183_HOST_IPC_INT_BIT,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  763  };
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  764
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21 @765  static const struct mtk_scp_of_data mt8192_of_data = {
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  766    .scp_before_load = mt8192_scp_before_load,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  767    .scp_irq_handler = mt8192_scp_irq_handler,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  768    .scp_reset_assert = mt8192_scp_reset_assert,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  769    .scp_reset_deassert = mt8192_scp_reset_deassert,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  770    .scp_stop = mt8192_scp_stop,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  771    .host_to_scp_reg = MT8192_GIPC_IN_SET,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  772    .host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  773  };
> > > fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  774
> > >
> > > :::::: The code at line 755 was first introduced by commit
> > > :::::: fd0b6c1ff85a489bcf1bcf58af64da1aeffd39f0 remoteproc/mediatek: Add support for mt8192 SCP
> > >
> > > :::::: TO: Pi-Hsun Shih <pihsun@chromium.org>
> > > :::::: CC: Bjorn Andersson <bjorn.andersson@linaro.org>
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zaSN2B0xhrr-wCPSQJb%2BnQg%3DrGP04fFLe-FyfbiXywsEg%40mail.gmail.com.
