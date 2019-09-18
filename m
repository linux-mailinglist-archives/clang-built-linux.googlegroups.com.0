Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBC4LRDWAKGQE7T5GJUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id B3012B6155
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 12:23:07 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id m24sf1454816lfh.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 03:23:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568802187; cv=pass;
        d=google.com; s=arc-20160816;
        b=NlG0eGUnmcOP091TbjHaLaPU+rqvnPCqI/2oqHNX3k+whdjUC6dHOc7jcgndfu16fL
         Hquv+u5GYH5srJTPd0DKnEQ31Qnu3rNCm4kzyDyhMfnEHl1VJdDRXMrPxQoaO9FkJLNF
         ZocAX9ntba3JRXGxKXpqwV7HRh8CIWLq7223niPgyyueAX3z/3ydJwsdzzCka57e+0CI
         KQ4Kb/2qrUEbbcC7lbQD5X4H1nD/l6iwkWe2ZhePHeGbLBp20CBiDsxofJmllw+mDNWM
         PwFMDz7YdXad7PFsq48BtiojgpQcQ37FqzPdEdM7ZIkANE3MWeDfY2nY6zliY1OXNRJb
         h3ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Ibgnrb8HhtoMnd5BD/scalLF3ZKOnzpxCZfuX/y7rIE=;
        b=QUc21ZFUFC+niGeJKcVZ4hOCU8vS5Nhl2izmJg8fBuh/rdWNDd6jCue43cmsHn4hpu
         JQAebjZrPwzsTd8eiU12nhATxdMt90d4iqp4yo9oXwwiJWzIGNwqsyBidZIwbLmrQH77
         h1Q739Q1gjGXNndNnR7eWwyyMh4Du3cYqyRMK2BhnIhcXgdS0youwRJGydiC8HL7LmJx
         LxGb2nxbhDvgXdA4Em/ztq0Q2RvopqiJujb1VQ9ciEYraTKbN9m83hofT+XR+8M7tM6U
         qvaLh+nKPcndhHrUQGWgRZZ4KYmR4OzPWgji9MPlKNzlRLJ1vQhLE+KEkaqpbr3TIe66
         i/LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Y5GBajLi;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ibgnrb8HhtoMnd5BD/scalLF3ZKOnzpxCZfuX/y7rIE=;
        b=ZKJgqnoqoPFs26UjKGBRQKutsXNF3u/gWjeYxkZl/aIUwSVVqlWmePp9TKP1pP6Gxd
         j0X6mfuSwrMrZtuH75f934duv400GONjJRXh4Cxgm60s4U4ciEN11pPzACeFmDX94/BS
         Depp8lRE/lmNJ8adZhazfNXLkTkUxubk0cHJi2AnaPoqQqJvk6paqgSRRlwdBv8aGu5G
         ZKSUipEPwHl2n2QUxdGvrLQFfCPc5jt+UcdAaQwCpSuBSUBBsHW+oa3Wn9bVCe8oLLrT
         MKIky+mispG1zBRMTgbrIjodlg/+E5lmNXLGOE82pEZG6ZyxdTPwrR84eu7SrUmHoJdJ
         agEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ibgnrb8HhtoMnd5BD/scalLF3ZKOnzpxCZfuX/y7rIE=;
        b=QWqJCSrHaLWfC/eADLzlR7NYpf47fhpv0XsAGO4uA73vJY7TpfjRH2H2cNMd8abZ6x
         LD6lZ0lPNwIqmZxUQNjNRzHWfjzFzLlkS1jA0TnpoyL3LSd6lE/87GDjit46o9V6N+kl
         aYkY52hpTIyCpa4Yzbx6SHZ09WD4yg2GznxVWKAAzvHSlwiFKF0ivMLZHBvLCF7frF1E
         37o+SQGYDEbBhrP5chXlpDuS1x71yGpNitqpAy+eW2l3aUslEjblIydntHPygX8lmOms
         ipZHF2pnurfNl8dmrRs6FjcbdlU0YnLgoEgdvL9QOR6xRIBXjNWD3kSkhFMbIRkWSfIu
         JLaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVndtCt+IrgcvJ4DzxNgwEP90u06WOuR+Lhq8O/LpT+f9wldlmP
	JIP+XHdGZdxCwFmr1fH0vgo=
X-Google-Smtp-Source: APXvYqwKh6uXk1zECy/DxQ5xHdAsw5exx6+f0FsiEGGRlV5wHC+ibJKNh+V55Ece/i4gXCTiledJmA==
X-Received: by 2002:ac2:4a89:: with SMTP id l9mr1692671lfp.122.1568802187261;
        Wed, 18 Sep 2019 03:23:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:42d1:: with SMTP id n17ls636247lfl.5.gmail; Wed, 18 Sep
 2019 03:23:06 -0700 (PDT)
X-Received: by 2002:a19:c6d5:: with SMTP id w204mr1639289lff.53.1568802186802;
        Wed, 18 Sep 2019 03:23:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568802186; cv=none;
        d=google.com; s=arc-20160816;
        b=QP1n3cdxIqsctiDWIVfZIHLAn6u7qPS9Y8xuoxK+mWpW1jtLC19P3JYIsw0GoRJLSj
         9SUQMR0XKIgR0vAIgqyhmXxphUJv+PtxqVVaowc4A10LHt3vGEI5JycBMwlIOCLY0OZX
         Xg31g2xlC4Qs/gVgCRa9U4loCmqOMJwpvd4N2zoRzqDO08MRYnES6S8z37uEfZ2lGAII
         vfSg1jaz79/KQGHQ3JAlBKc1ySiWcgrKjZ+84oyr1Z1B0si046FI+i4+hfSYhrW73K+U
         PRhvzGOJyz0Kh9AElHPCR5DtHeQ/NBL2wP8GcN0dJR3tE/Iz+L5QlpWNiUDqota9EMSD
         zMHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=fVR7WsKZT5heVux6OOhTNN5qN9Wk5lAWV1vo95u5Gr0=;
        b=XLm2zUeADkFI51jGeTAyrzc/LUNBROhKFkgo9gOgeJWblhZKBlfDQgtXrM6gUkZIAA
         imdtP7wGUxtTCT4ijKL7lkLyscr5d+Y+ncDjE8ui8dhCLDbD6j4pCyOQIbVpRsGQIxq/
         +1j4E1EcaAFwFFYvdaJfrXAKDY3gsa3W30LyI4oZjfPGG8ZKQom+wN5ev6sXsljMVnC2
         H+TLKaAilGbtRIBBAn2WnwlK5TcF+YEYadzdW5GEVPrfL9HdPJmyrp4Uoe6Q2rHPEcax
         knZMkNn0W7EAUwYlKHzIhP+5wjHVXt3AL7j5hsYslvLvUtHJc1QdU8p8GHWuxfiiUytr
         NUrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Y5GBajLi;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id q7si318593lji.5.2019.09.18.03.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 03:23:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id y127so5318611lfc.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Sep 2019 03:23:06 -0700 (PDT)
X-Received: by 2002:a19:7d55:: with SMTP id y82mr1737621lfc.106.1568802186400;
        Wed, 18 Sep 2019 03:23:06 -0700 (PDT)
Received: from khorivan (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id y22sm936629lfb.75.2019.09.18.03.23.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Sep 2019 03:23:05 -0700 (PDT)
Date: Wed, 18 Sep 2019 13:23:03 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
Subject: Re: [PATCH v3 bpf-next 08/14] samples: bpf: makefile: base target
 programs rules on Makefile.target
Message-ID: <20190918102301.GB2908@khorivan>
Mail-Followup-To: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com,
	sergei.shtylyov@cogentembedded.com
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-9-ivan.khoronzhuk@linaro.org>
 <CAEf4BzYFoJJk+WM51YT7NwCxQpy117DAMmgiJ1YbqaW9UUWpEg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYFoJJk+WM51YT7NwCxQpy117DAMmgiJ1YbqaW9UUWpEg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Y5GBajLi;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Tue, Sep 17, 2019 at 04:28:01PM -0700, Andrii Nakryiko wrote:
>On Mon, Sep 16, 2019 at 3:58 AM Ivan Khoronzhuk
><ivan.khoronzhuk@linaro.org> wrote:
>>
>
>Please don't prepend "samples: bpf: makefile:" to patches,
>"samples/bpf: " is a typical we've used for BPF samples changes.
Ok.

>
>
>> The main reason for that - HOSTCC and CC have different aims.
>> HOSTCC is used to build programs running on host, that can
>> cross-comple target programs with CC. It was tested for arm and arm64
>> cross compilation, based on linaro toolchain, but should work for
>> others.
>>
>> So, in order to split cross compilation (CC) with host build (HOSTCC),
>> lets base samples on Makefile.target. It allows to cross-compile
>> samples/bpf programs with CC while auxialry tools running on host
>> built with HOSTCC.
>>
>> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>> ---
>>  samples/bpf/Makefile | 135 ++++++++++++++++++++++---------------------
>>  1 file changed, 69 insertions(+), 66 deletions(-)
>>
>> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
>> index 9d923546e087..1579cc16a1c2 100644
>> --- a/samples/bpf/Makefile
>> +++ b/samples/bpf/Makefile
>> @@ -4,55 +4,53 @@ BPF_SAMPLES_PATH ?= $(abspath $(srctree)/$(src))
>>  TOOLS_PATH := $(BPF_SAMPLES_PATH)/../../tools
>>
>>  # List of programs to build
>> -hostprogs-y := test_lru_dist
[...]
>> -KBUILD_HOSTCFLAGS := $(ARM_ARCH_SELECTOR)
>> +TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
>>  endif
>>
>> +TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
>
>Please group TPROGS_LDLIBS definition together with the one below,
>there doesn't seem to be a reason to split them this way.
No. It's used in Makefile.target and should be here, following hostprog logic.

>
>But also, it's kind of weird to use host libraries as cross-compiled
>libraries as well. Is that intentional?
No cross-compile split yet. This patch replace only KBUILD on TPROGS.
It's done in following patches.

>
>> +TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
>
>Same here, is it right to use HOSTCFLAGS and HOST_EXTRACFLAGS as a
>base for cross-compiled cflags?
same

[...]

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918102301.GB2908%40khorivan.
