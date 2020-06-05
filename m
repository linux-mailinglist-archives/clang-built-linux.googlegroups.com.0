Return-Path: <clang-built-linux+bncBCYKLX755MIBBCFT5H3AKGQEISA3SXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEB11EFBA4
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 16:41:14 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id k12sf3400105lfg.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 07:41:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591368072; cv=pass;
        d=google.com; s=arc-20160816;
        b=GTgkJMyFaHvQ3ScAF0c4p7gfvigyEypXZ0pGx5l1EHbNgd4pw5GVPwivrynBYxx0Ln
         v8gTFWrRy0lgJ3tfzn8BkMwcqeCAxSDwrjnveKXPUXWqaWKgYBuQjJyETJOGbZe3sC1s
         ly9V4PKdrGJxf+zPR0kfvrt7HKwtT0tfZtp6EYnqtN8C/xACSd9z/L53qzoJqFCuTJF6
         9Rbo2te+9SzLk4tgkHO5SiDhPI7KhBiVN4TYu7zWOg65IPuQWlDFPeazg+AsqdGLtvT8
         8ZJ9w/E6hhh8dYssbGoD7d59KSZx9baWxbrMpWiVkskabPg4opMM+vyZqTO7MktCmf1k
         Ew+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:in-reply-to:subject:cc:to:from:user-agent:references
         :dkim-signature;
        bh=B49Bhef7VqS8dgOrV4H8NONYMqm2ihKxbywCWrOBF74=;
        b=IMf3LTydMLGzmhTo9P0EZJmdh9i7MkY0yq+54LIelaYn66jRmXw8oVI6AxllEdzXUA
         xBTWSSTRJNMaGKndJdW0QriU3GaIu+OqgJYyHZMhhI1618r0Ahr/XFmf2EYBWo2QB1dU
         0dLyMRpOaU0195Z1S3fIBA9n/57ok2txAg3gqWa2OYhB5ITWCM/l26kAR1uWgJeVMMsY
         STG2tqKIWGIhRkKCJEQitLQJqo/5O5u1eY+X3kYCZs9oy4XNp9h6teNHVdzGQok4kIdN
         3zstwFiZX7sCjf4nSZXu75KMPy6FUaywqO2zYQE8cHGzXvuh8dLG7M17IwlNt6BNgVT0
         6nvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b=D9yg0uCH;
       spf=pass (google.com: domain of jakub@cloudflare.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=jakub@cloudflare.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=references:user-agent:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=B49Bhef7VqS8dgOrV4H8NONYMqm2ihKxbywCWrOBF74=;
        b=EmOemlWbdXnxJD6zo2S2RSDXacwfdNh4JTlgfPaZ+QkzJfOSoBtp7BptohWxPsaouo
         cfk5i9QrMC3BDNV70mQSlkoyQ9Pqn3coYJySLv0dCZg2fzA5DlcLWV8TkIHnB03aavuv
         c03GThLiuehr8NomAu3+HUfgyLYJzjpgrBqvNH1P9aDzLn2FR5vYBdfMyieTGLCc7bse
         5g3ZLh/+xqekQ2K90vNG/StvxfRHxmczFfP4KZSHuZuP8zKObCpW7m2IXEZpbLiqyC0K
         8UcEus2L8brmkfPSLzldYl2wsPteJcy8s0tQEik0k53PiTeVHlvbU6NkvRYMjnGIYqmu
         kwrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B49Bhef7VqS8dgOrV4H8NONYMqm2ihKxbywCWrOBF74=;
        b=omVbwP4V3Pvzt2OMD5aiR0Og6jCcXVwoId3aNsWPh6uDMnyOVTbVn/wSgQa2MtwSLo
         zZYBfWXxqBMx+oiHLAgOokVGrWYpGyU5yPCHuo3QnAfuWhwvrWbCMGEBAEtq1OIKB+kY
         ZlKrdaCOCV3tl6flfqcfsTMPdkMrVMoOSNm9OuRAnGzuwbu4qJiXHtVQMU/BDjATca7H
         Xn+u/+vZ2YDDEkrhlLgdypQnmI6EBVRWPKWLSzSErf7N99F8Bs3Ur3FzGc0zjG3ADqnU
         I4eIeIANlweVO7zWBg/lBupREmHvdK/0lDb4EgabjO9tkrvZDzgFDxIQHfrxhEUdfIfs
         yiHw==
X-Gm-Message-State: AOAM5302Pd3FNDFC68p9XiwmKSOgL+rwxRYIpcF+mZaAoJ425shd6COt
	zubf1IMWL5fiRWhyX7zEJl4=
X-Google-Smtp-Source: ABdhPJzzc0HAqZ9rtxlPp71d9lwboOE+GW7r9WPDK3L7LMOWCdoV4SWnjQaKkS7/FtZWPYMfEjxj2w==
X-Received: by 2002:a19:4f46:: with SMTP id a6mr5503796lfk.107.1591368072672;
        Fri, 05 Jun 2020 07:41:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:92d6:: with SMTP id k22ls308678ljh.4.gmail; Fri, 05 Jun
 2020 07:41:11 -0700 (PDT)
X-Received: by 2002:a2e:96da:: with SMTP id d26mr4945667ljj.25.1591368071544;
        Fri, 05 Jun 2020 07:41:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591368071; cv=none;
        d=google.com; s=arc-20160816;
        b=GTWgrFP29c3S6tyKIuD/NG6tewwj7XmhYAmYmOgL5OgbfH004LLtwGVc9seSLtXIE5
         o57kFZuKJf3JIAAXOWIU76O9dA0W9yeQElad7vEy2QRrEF78Xim+yArQnn10eMe1TRGg
         N4fXuT8xajXkRfn80fgkdFo3fwQmdcC47tkrPiY9xxlblYLxcJ/BCJyV28FYC0I9qkE3
         VXaidxUxVAAOHqMWufnpkmxUa/CitcWNOlSCebnnaUD9bsTVk6I7ZZy4SlypA8e8ax2b
         LQzWJsbfZSKKNyKL4DHBL3Pt337mEoZFn9W7xt0YH059E8lhF0QHqrtpFNoc3eVEiaXk
         6mNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:in-reply-to:subject:cc:to:from
         :user-agent:references:dkim-signature;
        bh=0rAalUMg9w3vPsyZY+ceSssQBK31Vuvamre8uDZ+wt0=;
        b=DCnudW0Ir4hnXjWNJVUSeK8txcOUy1kTNmB86FTPcFXz6wKd1We5G3TO0hkzYqngqG
         phtgY/vwwp1PY4p+m+M/KSpgByQopB2SXnlXTRQt0UOxBIz6r7JkYy+t5BETWU7JByFx
         yv+GLAyg60FpebAQXM1MnNllSOD13HSTN56/T9L/akosG5b4/1pFlXMtZwbWZYR6pff9
         Zz005JLI8cyXKoK610LGpDBWkGObj4UGHhgD9I8rsqZVch3mUdCaM43VumyaUZB2av6B
         caB6RXReouFtJB5p7M/lMeZJU+xAa7UXwylrwXe7vQBiHa8JNGy9gQlZimLf9q5/SJf/
         4Sog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b=D9yg0uCH;
       spf=pass (google.com: domain of jakub@cloudflare.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=jakub@cloudflare.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id x20si101531ljh.1.2020.06.05.07.41.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 07:41:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jakub@cloudflare.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id f7so10382673ejq.6
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 07:41:11 -0700 (PDT)
X-Received: by 2002:a17:906:17c5:: with SMTP id u5mr8825745eje.275.1591368070886;
        Fri, 05 Jun 2020 07:41:10 -0700 (PDT)
Received: from cloudflare.com ([2a02:a310:c262:aa00:b35e:8938:2c2a:ba8b])
        by smtp.gmail.com with ESMTPSA id qt19sm4222197ejb.14.2020.06.05.07.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2020 07:41:10 -0700 (PDT)
References: <20200527170840.1768178-6-jakub@cloudflare.com> <202005281031.S7IMfvFG%lkp@intel.com> <CAKwvOdmof_tGVAN+gkq8R3Hq_sRDHXE_cB+37Sd7gKvgzVzVHw@mail.gmail.com>
User-agent: mu4e 1.1.0; emacs 26.3
From: "'Jakub Sitnicki' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: bpf <bpf@vger.kernel.org>, kbuild-all@lists.01.org, clang-built-linux <clang-built-linux@googlegroups.com>, Network Development <netdev@vger.kernel.org>, kernel-team@cloudflare.com, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH bpf-next 5/8] bpf: Add link-based BPF program attachment to network namespace
In-reply-to: <CAKwvOdmof_tGVAN+gkq8R3Hq_sRDHXE_cB+37Sd7gKvgzVzVHw@mail.gmail.com>
Date: Fri, 05 Jun 2020 16:41:09 +0200
Message-ID: <877dwl3796.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jakub@cloudflare.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloudflare.com header.s=google header.b=D9yg0uCH;       spf=pass
 (google.com: domain of jakub@cloudflare.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=jakub@cloudflare.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=cloudflare.com
X-Original-From: Jakub Sitnicki <jakub@cloudflare.com>
Reply-To: Jakub Sitnicki <jakub@cloudflare.com>
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

On Fri, Jun 05, 2020 at 01:38 AM CEST, Nick Desaulniers wrote:
> On Wed, May 27, 2020 at 8:19 PM kbuild test robot <lkp@intel.com> wrote:
>>
>> Hi Jakub,
>>
>> I love your patch! Perhaps something to improve:
>>
>> [auto build test WARNING on bpf-next/master]
>> [also build test WARNING on net-next/master next-20200526]
>> [cannot apply to bpf/master net/master linus/master v5.7-rc7]
>> [if your patch is applied to the wrong git tree, please drop us a note to help
>> improve the system. BTW, we also suggest to use '--base' option to specify the
>> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>>
>> url:    https://github.com/0day-ci/linux/commits/Jakub-Sitnicki/Link-based-program-attachment-to-network-namespaces/20200528-011159
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
>> config: arm-randconfig-r035-20200527 (attached as .config)
>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install arm cross compiling tool for clang build
>>         # apt-get install binutils-arm-linux-gnueabi
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>>
>> >> kernel/bpf/net_namespace.c:130:6: warning: variable 'inum' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>
> This looks legit to me. Please fix.

It is legit, or rather it was. Already fixed in v2 [0] (jump to
bpf_netns_link_fill_info).

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/877dwl3796.fsf%40cloudflare.com.
