Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBAFEQHWQKGQEDADQTFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B4715D3CDF
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 11:57:20 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id i18sf1666983ljg.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:57:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570787840; cv=pass;
        d=google.com; s=arc-20160816;
        b=DSXX97TUw/9iF2Uqaoy3UfO1ydF5o6KDByhXv4Quewp+++zJ1a06KbzAJOYGt4rXuY
         Io91BFhXrpmGLL3czFjydKgGDF0v1Q4bufsLy/+uuLtFKf1q9nt1rF4ieKajvm0TICyz
         oLwmURpkRRZFJuBV4LdHD770LARmVUVgcmbfwK1/ZobNIruyQxxPxPQGS+GlbJ1mwBf6
         f/zhsVy2Ws+XY2m1emApha8eWR49aj6Y6/REfASQ2b5uFoCK88Rsp5yMwZkphcD6aPVO
         oxTksPcMQick08PYBMm6iQLOpRQGG9TEl+eZh2c/FM7li1+2tePXnxV00VT7nxRIWFLX
         IkLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=YNA/qge0WtNo0bHEMh11EgyNkVvm9enEH2Md7qVH6gk=;
        b=nJ6nhcbwTIFv0jpTl5n9qiTIFuzXEYgt+vSpsWZrFX0wnVj+9wfZd8VwraIhwL90JC
         Yf3cLI+gv8mVlzsW0JshcAcFptNzZ1L3Jn2fuC7sbVlhFm/hnl8kqxto9ZTz2mxh9Zqw
         nAexW5E2O46YzyDSvVuksmJo0Qn7i67uW1hqr+KVR6xFNhcRw8ed9mBgMSrfH3Qvhd/f
         OPRcr/OKJcDZwYpTPktDRzv2oR+qxxMFtQkNDJdSPUAyRdrDMZ4xhp73S8MHAX951W/5
         ovifUYmOy5Kst+fqxY4fskmF5d8eGrXmeWWg9L0zGE23jO0cfIBMK66sq6E+U2Pa3p2Y
         lYJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UAFeseSz;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YNA/qge0WtNo0bHEMh11EgyNkVvm9enEH2Md7qVH6gk=;
        b=d/G22cG6hYLyDnhU8B4sNIPj71Zn4cJEKMqeWQr2w4V4PE//fCUpjYrFgpPMZGByCH
         ek0H/PcogXegDuz9x5lTUZQeLcIRR12Bh9SZ9xrkoLbCuI63+ZmGB1+ipTLc9we352cx
         Dv4NzeGNQlRKSPO3GkOK0PK8f5HW06Ew4AYWgeYhTFkmObp+lGteVNJmn2WrklEsXcwV
         v2p5pNkMJPKj6J2s3E9rkPX0AKS30sBZgQaB+YXmKYBHOo1LIkEfnlW+YuL0NO7L2sT3
         /T4nBsaPOJh/K0zI+KRMWPwMNSabZV7I//pwRBGW0w0DjKP9s0usA1usz3G/V9Adlrq8
         t4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YNA/qge0WtNo0bHEMh11EgyNkVvm9enEH2Md7qVH6gk=;
        b=ClfI0CMjLRhZen/cMGNQMOQKP8YyL3hGOIh9eMb1V3UnRaW3ohO2hXHlxaKQ5pXiLe
         H2WL/gsIycW4qgitKXLmsCEfV8RkyaUBv698AOpDtYRcgDndhqBR2hnK4rAZrqcDj3dt
         EnObdpOrWH4qZ3WyUg9FWLaQ1vXGyt0OewWBDLasVjh/rPkwlDyoI5GAiDzqCUSeOXFj
         213O19O6cfgyYSL/5JdL7IQxa9gf3dcrdnDc52PTEH5HegUEgAXYZ2nPVXl7QQIbePrN
         EtFYZod7VIINbZlECqbOlvcvK/EqgESQPimE9ylh7SKS7J8Mt+N38c4TQqHzYsGKfqrV
         ZFMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUtLtNkyWHMCIOiVCmhzq0Wsc+M+yx4O2/DdpklyAyOrM1As16B
	tDml1f1w5BOoICrzY4a7pH0=
X-Google-Smtp-Source: APXvYqyv/a+zJFp5ff16ftHWkHo7Fv0KI2oFBhM1qY5/0tTwet2KhVPEwNHJYXEw7Wc9XV4aAEZzCQ==
X-Received: by 2002:a2e:b819:: with SMTP id u25mr881483ljo.223.1570787840288;
        Fri, 11 Oct 2019 02:57:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9bd0:: with SMTP id w16ls900196ljj.13.gmail; Fri, 11 Oct
 2019 02:57:19 -0700 (PDT)
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr9098838ljc.186.1570787839813;
        Fri, 11 Oct 2019 02:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570787839; cv=none;
        d=google.com; s=arc-20160816;
        b=DpE/atHzguclp3MWbibKlSMyfMAObT7/uzfw88P2FabLEois8P+ajsi5dDnt8VwePt
         ZaKdePu9tvQpCeBQuz69hp5ldMNHaCppyQVlUArusZvm5pLncg0g6td2Iho+RkWMQvAw
         oKUBNwa7CHroyF1ceG9QX/4iQvNbyo4Pze8aSqK3UhPDv9r+ShlZY3RCnAipxPCzSQ79
         ZfMKo1DSUcgg+mravbzui3aMSyD2DWrnFBEQ8UBjY5lIUVgEkwFsgBGXsQWblQv2XULZ
         v1aKN0ka3fpRnVxQ1q+tDtShl8XeBpjfUA5UN4CRLIkmQPtQtNIEVbWDbE3Wf895eh5J
         xzvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=hp51ftF0fMacTdMbbRNDwAHtYKpjRZUEYNDQ5ofyyAk=;
        b=0hzQbNVcTdpvIHFqect1s7tOy8vf6bpUM7GQHJPx4zsnlMAxhy4zDz4FR6z/zbexPt
         ABYh6j7abqc5L/CqLdBB0ua49jfKMZGRcF5DnXhn+HIZ+TVJQdU2akWuMSIbzmJDCBJL
         OcFsYQ4WSqnyHJyjLQm5+W1G35LEKpZx0vSWRAKsKSwY4/zXjE5jUVrUmT6qG6a51yH7
         oYo1RLm0Lyq/+uCUrc3QF/0WYIVMV4qJkrIEAgNw6FNPD9DHdE55tYNhOCEQr4TRs0X/
         y3BJHe/OCTpZWOzkYpGL5z3ZzG1rjzf22Uu2tHouW73Zu6sOJ+vEWVTDBpqqMbmFESIF
         NxUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UAFeseSz;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id z4si223829lfe.4.2019.10.11.02.57.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 02:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id a22so9238040ljd.0
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 02:57:19 -0700 (PDT)
X-Received: by 2002:a2e:3919:: with SMTP id g25mr8650919lja.162.1570787839244;
        Fri, 11 Oct 2019 02:57:19 -0700 (PDT)
Received: from khorivan (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id m17sm2384718lje.0.2019.10.11.02.57.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 11 Oct 2019 02:57:18 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:57:16 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org
Subject: Re: [PATCH v5 bpf-next 09/15] samples/bpf: use own flags but not
 HOSTCFLAGS
Message-ID: <20191011095715.GB3689@khorivan>
Mail-Followup-To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
	ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
	davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-10-ivan.khoronzhuk@linaro.org>
 <99f76e2f-ed76-77e0-a470-36ae07567111@cogentembedded.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <99f76e2f-ed76-77e0-a470-36ae07567111@cogentembedded.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=UAFeseSz;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

On Fri, Oct 11, 2019 at 11:49:38AM +0300, Sergei Shtylyov wrote:
>   More grammar nitpicking...
>
>On 11.10.2019 3:28, Ivan Khoronzhuk wrote:
>
>>While compiling natively, the host's cflags and ldflags are equal to
>>ones used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it
>>should have own, used for target arch. While verification, for arm,
>
>   While verifying.
While verification stage.

>
>>arm64 and x86_64 the following flags were used always:
>>
>>-Wall -O2
>>-fomit-frame-pointer
>>-Wmissing-prototypes
>>-Wstrict-prototypes
>>
>>So, add them as they were verified and used before adding
>>Makefile.target and lets omit "-fomit-frame-pointer" as were proposed
>>while review, as no sense in such optimization for samples.
>>
>>Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>[...]
>
>MBR, Sergei

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011095715.GB3689%40khorivan.
