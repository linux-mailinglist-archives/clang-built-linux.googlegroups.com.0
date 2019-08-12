Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBB54SYTVAKGQEOMFCPYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB5389742
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 08:38:49 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id 4sf3126376vsd.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 23:38:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565591928; cv=pass;
        d=google.com; s=arc-20160816;
        b=HDk2mU3qTplv551QxFpQnO2UP4IobRKbCk9rVLPVPWAgkdrLd4e4ejje+PQo5hAuEQ
         G2raHC6+z7XZP0vACqlogz8eEofuVW+znspQ6JTfGWFUzaDRY5pTUZVfqWYFB8sT8/5K
         tYCuZIlDrYlfNLPQsEqc5inraya7HyvqTqJf7KdsLijUhy5ozG6fer/NSbgRwGfQ7zqz
         vie8Tm7MjwjoSKlrcotXMYoWSmrLHsTvKi5b4uzYYWHdtfJvQY8xDB38pgm2zzzV1KRt
         EKuCcC95tnfC4T//DsmRUe+8rdYspUFWx4ibuvXDFxACfPRFBMyKpMaFEFTPHfXvzOiz
         pjiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:to:subject:sender:dkim-signature;
        bh=VycDy7B3K6DI9VYnWvy9DPl5kdf4su2Krkb18bWj4Ko=;
        b=kKoj/H1c4DiilVaI+CPVqoRq32jrHm7hoFqXcWkDJmOcCgQ+++nlqQt8ysQiO+mLjD
         eH+xYPgywy/gedNL/9MZgvbzLziyLZzbDm+G0g0QaONuD5BqvE9wUrJvTi+dl4QjWrUx
         BbZR9jCTKCtYm7dLeZ0pBGWgz3UYC+9CR+bLbsPtcLrsDMuNDl5WcqW84uKvpNW0Zd5Q
         ej7/fD3fWxVecoCCuvD6zcgwT3d4FRvzeoRNfsmVfTB4lqRZaXP5M2arMI/xMXLmzb5V
         TXlW/k3VxcFAMgeaS5vA/BxRBkxbr50g8Qg4Lvpu3r0Bl95NGYcHH0xnZ6Gr4TeFCobU
         Cpbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VycDy7B3K6DI9VYnWvy9DPl5kdf4su2Krkb18bWj4Ko=;
        b=hdLYejA3ngytIJOHCCCHqaJ9Yyt/lF8O0oHALm9Bhvt1XuABnHIoA0STGmhfDKIiqA
         rsTGemCyI8V2TF+T57Fe4GBIQqaCQ1/zJ/cMyVh31OucgFdLjug5jFHIyNCdDmsWDp2V
         F7tcD+GJnknm9KFrDqittCcmcj/fNSWAFFXvh6ddW/ixFSbyh/upLUUpr/54P952f7nt
         qwG/GUmAplRfq+Gze3FsUCbkOKupQXjWoo6u3FrQtqLK3ye7YKOFeQr1rF91CwsU7yMO
         HxU4Fvjg/2x2+pJUZ8epfHCKjl2NqTvVnDu4mgnuFVmyrL4Rm2+fhsfJ8hg0aMLtgmhK
         kk+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VycDy7B3K6DI9VYnWvy9DPl5kdf4su2Krkb18bWj4Ko=;
        b=DJ8Csdcib9DBzQ9hDcrXu+UtwfOWTiphHlbANALvQxUZc6KgRqjUlrJ3BrwQ9N+dnv
         PeTZk/pmoEa7ZJ4vHAmNOovjQhxkfC3RU6saE+0C3u8o3I2kDGBGOY+Eh8mfQ8br5JpJ
         VVaG/0XVOOmTcp/SzUpfi+HP/9hBjq3JPfYyoxSs8NKtnfXGeeAobOweSO4CeAQ0nbJi
         N/8C2JDoTHtSz3OowxdRqNWKBbebkB3r8usTitLIy68KptbjY+nt53kz/CDJNSF9nn6j
         wSPHxsvMe1f1cMMYp7ELdTE3xfDqCOhU4RzE70CqiqHt62Q7fAsZup6ZXI5gCqWcT5nJ
         ykZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1YaGHPeYJfQzuDZ/Eu+xulFBiMRVVnMzczatjqbwXFPDBIwWm
	3LExu2uxwLSMVhiu1AxVRrg=
X-Google-Smtp-Source: APXvYqzk+oZuJvxzXcP6QFlkctZzGvQowWh/nYC6LJ3ic+YB7xUi2u+L/ucwEdg8tc9wsLUwWRVc2A==
X-Received: by 2002:a67:f8d4:: with SMTP id c20mr20048961vsp.239.1565591927983;
        Sun, 11 Aug 2019 23:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8782:: with SMTP id j124ls12814193vsd.3.gmail; Sun, 11
 Aug 2019 23:38:47 -0700 (PDT)
X-Received: by 2002:a67:f941:: with SMTP id u1mr20394109vsq.60.1565591927773;
        Sun, 11 Aug 2019 23:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565591927; cv=none;
        d=google.com; s=arc-20160816;
        b=M/W3XzLZuv8qCwZq+k22HjfDFqok+SfuNBncbWi77BOMrA2u9fwcIyWxJsZOMAUjL/
         YyL01fJEBPxqIZ/EwYToPgImLJwdK1o7FlN31PRQATNjsQwCwjEg6sT7KaroSD0sxPSQ
         lcUhXi9JQ0jYqNtynEX3zRnU9v4rzluk8IY5OmBuW5gPKh0z3dslR/Ezs2bj5XOghNxp
         PIsEQpH+oYYJtP681X7w4gOeIHCbVfwBsKvkT67KSuBDsiqgLljYX51LdGQtAuErvYUL
         TRpeWc1qLzj8nKtkjhlSBcR6bfiEWKmaaPmjxsYOft+H8Z1TxZtWUpFIXeGHtZecx0Pr
         D4aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:to:subject;
        bh=hL//iMFkRgK5KRX2XW3LjsCfrowBNmbWm/VpiQBIuio=;
        b=F7x8FVxa0nNCXwcNe5ChLTZrDbnzCsmM7syiISLNp8PhTutOI089oIgCZNJoE9Xj7F
         Wv24iFJcdT9p2GLSCUcrkiikXyyEIwgonEMVLC+GLKNJKRWKQcC+ZGT6DeK5EQybudM4
         lO0jzs/KrvEZx3TBZAfMLPw2OQM53JjTOphd7YrWQC7b8S6iZKvlYF2oOfQ7bqWLMM69
         xJXIigu7ta/xnqUH7pgsP/jgAKl7Di+LD5Z50QHFXaunnIKqWDdW/mvtFy/v7JVhUfnG
         8l0N4yCCle1a/Dxo8e7WeIYoTAkcuF+S48OYdMIR5PCmT4Pu0YFkHj+j6oAgjPCfTF23
         QFZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id k125si5499134vkh.4.2019.08.11.23.38.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 23:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Aug 2019 23:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,376,1559545200"; 
   d="scan'208";a="193891549"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122]) ([10.237.72.122])
  by fmsmga001.fm.intel.com with ESMTP; 11 Aug 2019 23:38:41 -0700
Subject: Re: [PATCH v4 1/2] perf machine: Support arch's specific kernel start
 address
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, David Miller <davem@davemloft.net>,
 Milian Wolff <milian.wolff@kdab.com>, Donald Yandt <donald.yandt@gmail.com>,
 Davidlohr Bueso <dave@stgolabs.net>, Wei Li <liwei391@huawei.com>,
 Mark Drayton <mbd@fb.com>,
 "Tzvetomir Stoyanov (VMware)" <tz.stoyanov@gmail.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20190810072135.27072-1-leo.yan@linaro.org>
 <20190810072135.27072-2-leo.yan@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <c1818f6f-37df-6971-fddc-6663e5b6ff95@intel.com>
Date: Mon, 12 Aug 2019 09:37:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190810072135.27072-2-leo.yan@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.hunter@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.hunter@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=adrian.hunter@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 10/08/19 10:21 AM, Leo Yan wrote:
> machine__get_kernel_start() gives out the kernel start address; some
> architectures need to tweak the start address so that can reflect the
> kernel start address correctly.  This is not only for x86_64 arch, but
> it is also required by other architectures, e.g. arm/arm64 needs to
> tweak the kernel start address so can include the kernel memory regions
> which are used before the '_stext' symbol.
> 
> This patch refactors machine__get_kernel_start() by adding a weak
> arch__fix_kernel_text_start(), any architecture can implement it to
> tweak its specific start address; this also allows the arch specific
> code to be placed into 'arch' folder.
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/arch/x86/util/machine.c | 10 ++++++++++
>  tools/perf/util/machine.c          | 13 +++++++------
>  tools/perf/util/machine.h          |  2 ++
>  3 files changed, 19 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/perf/arch/x86/util/machine.c b/tools/perf/arch/x86/util/machine.c
> index 1e9ec783b9a1..9f012131534a 100644
> --- a/tools/perf/arch/x86/util/machine.c
> +++ b/tools/perf/arch/x86/util/machine.c
> @@ -101,4 +101,14 @@ int machine__create_extra_kernel_maps(struct machine *machine,
>  	return ret;
>  }
>  
> +void arch__fix_kernel_text_start(u64 *start)
> +{
> +	/*
> +	 * On x86_64, PTI entry trampolines are less than the
> +	 * start of kernel text, but still above 2^63. So leave
> +	 * kernel_start = 1ULL << 63 for x86_64.
> +	 */
> +	*start = 1ULL << 63;
> +}

That is needed for reporting x86 data on any arch i.e. it is not specific to
the compile-time architecture, it is specific to the perf.data file
architecture, which is what machine__is() compares. So, this looks wrong.

> +
>  #endif
> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> index f6ee7fbad3e4..603518835692 100644
> --- a/tools/perf/util/machine.c
> +++ b/tools/perf/util/machine.c
> @@ -2671,6 +2671,10 @@ int machine__nr_cpus_avail(struct machine *machine)
>  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
>  }
>  
> +void __weak arch__fix_kernel_text_start(u64 *start __maybe_unused)
> +{
> +}
> +
>  int machine__get_kernel_start(struct machine *machine)
>  {
>  	struct map *map = machine__kernel_map(machine);
> @@ -2687,14 +2691,11 @@ int machine__get_kernel_start(struct machine *machine)
>  	machine->kernel_start = 1ULL << 63;
>  	if (map) {
>  		err = map__load(map);
> -		/*
> -		 * On x86_64, PTI entry trampolines are less than the
> -		 * start of kernel text, but still above 2^63. So leave
> -		 * kernel_start = 1ULL << 63 for x86_64.
> -		 */
> -		if (!err && !machine__is(machine, "x86_64"))
> +		if (!err)
>  			machine->kernel_start = map->start;
>  	}
> +
> +	arch__fix_kernel_text_start(&machine->kernel_start);
>  	return err;
>  }
>  
> diff --git a/tools/perf/util/machine.h b/tools/perf/util/machine.h
> index ef803f08ae12..9cb459f4bfbc 100644
> --- a/tools/perf/util/machine.h
> +++ b/tools/perf/util/machine.h
> @@ -278,6 +278,8 @@ void machine__get_kallsyms_filename(struct machine *machine, char *buf,
>  int machine__create_extra_kernel_maps(struct machine *machine,
>  				      struct dso *kernel);
>  
> +void arch__fix_kernel_text_start(u64 *start);
> +
>  /* Kernel-space maps for symbols that are outside the main kernel map and module maps */
>  struct extra_kernel_map {
>  	u64 start;
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c1818f6f-37df-6971-fddc-6663e5b6ff95%40intel.com.
