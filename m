Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBAXPZPVQKGQESZ2EJOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id A41BBAC3A0
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 02:19:14 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id w4sf1747606lfl.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 17:19:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567815554; cv=pass;
        d=google.com; s=arc-20160816;
        b=piihcfz/P7nBkb3SQFIS4UX/Z/uocpU0+T7Vd8tOqPvKtrzpSvEzWMPTnrIE8T8l2U
         5ouXaJKbxa2KMX5pyueFNbQZ81vBHEHhgNEVl49CHhXdtz6Awmpy55MZNre/EmPoKe/H
         21K1wIhHM1vUJcuWyFBDoWPoiNYgDwuz9rO+79ZZ+6bp8hTC/QL5sDz2dUXFPKHRXssD
         SZWs33g8/KNs3z1hN7vjb3JduDyv2J2sU0b2Pwve7LsNa/dlumUW0pdVEVnLNxl68ry3
         f4cLE/waZhcHPUOYr4PH6K0W79tJz31iJO3LPzsUBHgFKzwRF3+KHMlpEc/+dwxTde49
         qZhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=SjlSyrQbdoKnDBJ+f1Arby2l2t9GPXlQgNhgP8w871I=;
        b=rSPHwBGkyWQ6zx0Yj373P77hyA/enytYbF1FjlGwAoPQvLlQBFLqTjjgNbPazkWsHs
         43yLllfavg3KrU+JsiiyZ0ZM1Ap8At1c4Tav2kZuHE4xtMG7IRqEo4JfQ7z/zGoiSDIv
         7FCkpP9j3fUBZWB5z83orLKlWNWMYUVSRGWvRyIak75RG0AJIcvRAtEj5fEOxKGfTLUS
         5eWaPK2/AdOLkrZuWWJYgKTgnpgFNPKss9o3GK67KNTD8wHZA0S4EfpXyfeDk6wtHfrF
         /GL4jP4fHR1j+PKoRD51RKuxIeKN9G75YsHPbiO71SY+6Rd+tbbGoolBU61zboFFU0fR
         O85Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=K0DVaUnO;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SjlSyrQbdoKnDBJ+f1Arby2l2t9GPXlQgNhgP8w871I=;
        b=tHfqOHWVbCunvqv998ZyD88FYkGE6lSEjauYmmkiiwDWxe4CKDNiGoMhpuujuOhL0B
         zadOsqip5vcAkJiimPU1nYIjo//Cp2h9OmBTLT17x1EyFrMuwLuE+ftat5KFS61QzHBt
         SvhNbApNaT4mlE7ogkNhQqc+x06NCZjcePVpq6zESwAlJwPLtCneAUD3GkXPNMfbXm2b
         DuEvoI7UOEPT6nGW7kf22aPq86DD0eZ5L3vpY1yaX0So3qnitgK9/az+GdNDayUEocH9
         URDM4huzq53ZRroygfwUusuwiztbroNjs69VUypPy68Fe+E/3PF0LM7f5u4DVBg98gVD
         wVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SjlSyrQbdoKnDBJ+f1Arby2l2t9GPXlQgNhgP8w871I=;
        b=FZIs6Zq11iFXbJqI28MtE3aktqGTnAyvdIFgXVFDaW4b5kNwzZT6ghQWqq2ipFLfPk
         FEaETetiwZ8dVgecuMPBaZcyVYLjgxFD90qCb9JxKVtKb9GI97XIbsbWYvJc19juwxfq
         CGI3rpkR3MgdquXrn13zi2ZnkXiNq8uPWs5qywhs6IZ+cQz+vYMGXe9Bc0tgbN6p7Jg5
         XoKhPUFMpkLh8X+HGtP4gpk+xSnyiHFj85mFDbbOTePzbqQZrkWyxkY8rcXCSrrlbGOW
         V6M7+dxS//VuiwhbUceOlIiuMXb/WTTcn/RyOIyJuWF8Y7JJLuGr9SapPQ/ayg+6CiGa
         kfOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWnfoPekbpDvmLbsBCKMA60XRsLnmeifMaSa/U95NqMzd1Z8E9e
	z9f0bosgJjhDUlM6n+RBMeU=
X-Google-Smtp-Source: APXvYqzEO9SCxNfx8k0vbGmxXsa/9NLZtkNNw7e0uYvFo7VvYgMRdVBa3UYhxNL02hDuNZrE9EHSlQ==
X-Received: by 2002:a2e:2953:: with SMTP id u80mr7456744lje.233.1567815554184;
        Fri, 06 Sep 2019 17:19:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5203:: with SMTP id a3ls787650lfl.6.gmail; Fri, 06 Sep
 2019 17:19:13 -0700 (PDT)
X-Received: by 2002:a19:f204:: with SMTP id q4mr3341887lfh.29.1567815553768;
        Fri, 06 Sep 2019 17:19:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567815553; cv=none;
        d=google.com; s=arc-20160816;
        b=rSOErW34VrGhI+Aeqo9v/KnKbu9TGg26CMv/sX+SzuDE7tkJ08t0pr+uD0Nyh18oP3
         WtHBz6HrnT3YRcKyyDuamqJngoNP1cMX+TKzfVnhI7oFL4LfU6GNMmEXfsD5hQS4Asl+
         4RsDdt2cr21lMDe6eRnmnwnTD0sf0OGwtdBPOVZmJFHf3ZPBxsmlYvif2/FmrX+Q+zKY
         fcfKpQ4mavXgzJJMbALFdIXuBxmGqJBPo0YT5L9J38wZywlTXIL+lZUogR5yMWPPBQiv
         oqyXOi4DePsin6tNrPbGAGffCdICwi6M0QEiqrR1uJ0wAvv2y6MkoU+IDkGHd4UmLB6W
         pa2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=LMaOt4FuyGYZ6GmxTEoNOWFTUVjVfbek7WmSRfSN6/o=;
        b=nLktqcPawqs5Cez+eV2QlbdA2p/G8T6KCRu2uhnwqvCXhrZkSveIDMltkH5Pgz+jU5
         X84OavKEan/IJozaVIYh9t1FUOikQsnAVgDwpMlI7amNxO++LDvC9TKONcOxtQauq+sV
         NAFiYT4YILKV2Qc8mbp+lOEIt9Glt07QPpaLNwdfy44JsllhoIZFYLLwbgoMszpRVzfr
         8qSVDt7fcAMtrgkdDDwZWI6Aa0LWCcYIoO+Ev6LU87pNG4fmbU7hw4ceTD+N9G0B0hrh
         MSwaqu2JMKmQ4OPvNGf/+FKi0NKKiQVj2ZOvr23LO6Of7WdOEoKumwv+0i82oYLLEiFO
         IpqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=K0DVaUnO;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id o30si345648lfi.0.2019.09.06.17.19.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 17:19:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id u13so6398107lfm.9
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 17:19:13 -0700 (PDT)
X-Received: by 2002:a19:117:: with SMTP id 23mr8278563lfb.115.1567815553302;
        Fri, 06 Sep 2019 17:19:13 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id i65sm1138129lji.16.2019.09.06.17.19.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 06 Sep 2019 17:19:12 -0700 (PDT)
Date: Sat, 7 Sep 2019 03:19:10 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH bpf-next 2/8] samples: bpf: Makefile: remove target for
 native build
Message-ID: <20190907001909.GB3053@khorivan>
Mail-Followup-To: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
 <20190904212212.13052-3-ivan.khoronzhuk@linaro.org>
 <20190906233138.4d4fqdnlbikemhau@ast-mbp.dhcp.thefacebook.com>
 <20190906235207.GA3053@khorivan>
 <CAADnVQKOT8D9156p49AQ0q0z5Zks5te4Ofi6DrBfpnitmRBgmg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAADnVQKOT8D9156p49AQ0q0z5Zks5te4Ofi6DrBfpnitmRBgmg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=K0DVaUnO;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Sep 06, 2019 at 05:04:08PM -0700, Alexei Starovoitov wrote:
>On Fri, Sep 6, 2019 at 4:52 PM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>> On Fri, Sep 06, 2019 at 04:31:39PM -0700, Alexei Starovoitov wrote:
>> >On Thu, Sep 05, 2019 at 12:22:06AM +0300, Ivan Khoronzhuk wrote:
>> >> No need to set --target for native build, at least for arm, the
>> >> default target will be used anyway. In case of arm, for at least
>> >> clang 5 - 10 it causes error like:
>> >>
>> >> clang: warning: unknown platform, assuming -mfloat-abi=soft
>> >> LLVM ERROR: Unsupported calling convention
>> >> make[2]: *** [/home/root/snapshot/samples/bpf/Makefile:299:
>> >> /home/root/snapshot/samples/bpf/sockex1_kern.o] Error 1
>> >>
>> >> Only set to real triple helps: --target=arm-linux-gnueabihf
>> >> or just drop the target key to use default one. Decision to just
>> >> drop it and thus default target will be used (wich is native),
>> >> looks better.
>> >>
>> >> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> >> ---
>> >>  samples/bpf/Makefile | 2 --
>> >>  1 file changed, 2 deletions(-)
>> >>
>> >> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> >> index 61b7394b811e..a2953357927e 100644
>> >> --- a/samples/bpf/Makefile
>> >> +++ b/samples/bpf/Makefile
>> >> @@ -197,8 +197,6 @@ BTF_PAHOLE ?= pahole
>> >>  ifdef CROSS_COMPILE
>> >>  HOSTCC = $(CROSS_COMPILE)gcc
>> >>  CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
>> >> -else
>> >> -CLANG_ARCH_ARGS = -target $(ARCH)
>> >>  endif
>> >
>> >I don't follow here.
>> >Didn't you introduce this bug in patch 1 and now fixing it in patch 2?
>> >
>>
>> It looks like but that's not true.
>> Previous patch adds target only for cross compiling,
>> before the patch the target was used for both, cross compiling and w/o cc.
>>
>> This patch removes target only for native build (it's not cross compiling).
>>
>> By fact, it's two separate significant changes.
>
>How so?
>before first patch CLANG_ARCH_ARGS is only used under CROSS_COMPILE.
>After the first patch CLANG_ARCH_ARGS is now suddenly defined w/o CROSS_COMPILE
>and second patch brings it to the state before first patch.

Oh sorry ), messed with my local exp with target bpf, after rebase, even forgot
that's mine. Will drop it, with removing "else" for previous patch.

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190907001909.GB3053%40khorivan.
