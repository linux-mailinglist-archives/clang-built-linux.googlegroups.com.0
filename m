Return-Path: <clang-built-linux+bncBD5JZUMX6AHBBWUF2KDQMGQEW45TDMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 878073CCA6E
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 21:36:59 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id a5-20020a2e7f050000b0290192ede80275sf5664723ljd.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 12:36:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626637019; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmiRte8sUnVdTl3QwcsjG5fU7hlobK26NRYLLBowNVL7BmKmggSzF8qwc7QLQX6iHB
         Gsb2ZrVJ8SV2tMlA2Wx4d5BVcStDzkJKNu6TkHmt1+imfT709jyMdEGX40IXQp0lET0q
         SWEuPpXS8f8+w9WNXE0DV8eE2wsOOJO9RyLF3SRCWX3ARFthX4fc03JNpPyIYNjN9Tg8
         gAhpwEh8zSZWnZddq2mnXXsbB88gk/Iwr7VDlGbnq+G5IutIVZUrNvzi/2+gJxuFYbSX
         iVWTa4FhGLfWyL29wl4hLewcTxqsK+BGxzbxPzkgO3m75u+IJdQVWLceJnPT8oZDfZfw
         wTJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1sv/MkmHW+RX1D4giJKZracqHmm1eiwxNkaVEAU/XZE=;
        b=dKpqo/qXF9oo4CfeLgEoa1khvOkyye4z3THW+Xm8oktcVIcpEqepchlwSBxvM6r19M
         /wAbaUB8QLkjmlSC2dRKgUHwr1wLpbE/+ISB55RhWYGJKO61wdwkmGel11lb2AwF5MkM
         H0Mb4l+ORDBQuTnpafQc+n3itWuupHCJpDrhfIP8h9/GuxedHMMTh7imlDSkhLv0n8pT
         HJp5Yai/F2oOy44fbz6Qqc0Fj81QJ+xZvmOZZ9+GHDPejWpGJzmrAifsDIx09mMiMc5g
         XI/2jW8K6Bs83CQQkziAI1euxGIrSZg7v3GtWLcTWazjnmx5haNW1glXu2C7jBqE3SIt
         IQRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ukHRmbXD;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of msuchanek@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=msuchanek@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1sv/MkmHW+RX1D4giJKZracqHmm1eiwxNkaVEAU/XZE=;
        b=OClfhg21KeakFE+TGaUp6itQyuB+OLhikLupogByxzsAIQYnM0J9bm2OcVQRLrmswC
         EVBHcmzx8ljWYqIglJKCFuF1aAr/2VwlQs2So+l7d4LLbcFDc3qQIvCiQ2lrIbLMh7Z8
         uOZHk6m3FkAVYiSEZ3TDOrLemK8+AxpSWopH4leZDehxNSIu1AuIKVSt7MqVBQCXlMqL
         QIpC9gkN9DUBESTE2YgCECS+4B7zrmh260bBbO4HDGDiimdcoOacom+FmSVQcslcNubl
         COsAlpjqxx3Conz2R+QVNVgJDdXoRi87/+Lkj/tB7Y5R6WvTLE7kBMCIjeU1t+o22o1o
         fftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1sv/MkmHW+RX1D4giJKZracqHmm1eiwxNkaVEAU/XZE=;
        b=aYYkaBokBv/X0DeSzVdjMFG8m7l/rDGx0X8ggOo8Bt9961IA7nUhO1rFpBPMQbI2Aq
         rA4ITu2DMP8EgjVmxhQsyR6G7Ajtgb+pKcYtpTH/TgmvyvZYusYf9x+S7QbqhUtgEHjs
         3yKs1KxaqvOk13GrmgqPf9cFHQ115ZkekeHaknbALXe8RinbLedDToYDytD+k/6ZXvJl
         qe2YJ7LwGLiulgb36nDlmF+lVRp2EXXFtlHZmAw9ed/+Ozdo6LGnj/ll2ql/+MckCnz+
         cnNrs0pqH5j0VtvuI/++kKg4acsIrFZ0Cj3eR+VY2oUSdDR1Mb4Ju/V6APNFzNL0Sios
         SU5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MkQufBGsf9csixw9dGzrFZduW8qMH8WAnI5TTlLT0F3j4jtwb
	uhv2Cu1QSC7ig0rCD0A2h+w=
X-Google-Smtp-Source: ABdhPJw3Udmi5CDJfCGUH3Yyfdql1XjSBR4k8uK2MJvtH38qJrBmgNlI9sSepIES0vXt+JFSImD9WA==
X-Received: by 2002:a2e:a783:: with SMTP id c3mr19342726ljf.158.1626637019142;
        Sun, 18 Jul 2021 12:36:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d17:: with SMTP id y23ls3364264ljc.10.gmail; Sun, 18
 Jul 2021 12:36:58 -0700 (PDT)
X-Received: by 2002:a2e:86c5:: with SMTP id n5mr759691ljj.398.1626637018180;
        Sun, 18 Jul 2021 12:36:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626637018; cv=none;
        d=google.com; s=arc-20160816;
        b=VUIiCI8n6PTqgpSZJTeQn51e8Vneb2O38d+2MIx+4LkqeJH2pCRFZWqfzHhJpE5Ah0
         Qq9QLIsb2kbdb1AE4ZDcNzpC6Ga6/TuoCHHdopub13mzJpjUAA/dwaBvdwG/IvdTVrdf
         m2nns1NCFjNlaq5uTMpp1kni0sZ8CVYGr1zWgrhi5hkg4PEX/ZKkc3USUmLXordvjFOb
         dCS4UD9fY3v5WIbuBxokq20oCp8jQkemUWLTCiFddi++PpcD5VKEhVFH7vvQquJCbISS
         iSV8xiAX0dJWvcnZx4HHW/j5a9nTB9stX4CyYy6F8zaqC48yO7bzrxnHGFXY9KXZbce/
         Lv/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=4VE9wboOFBx1A8aW4S+ryH5vyFPrMvrAxG+rYAOecbI=;
        b=pK/G4m9x7dSqTGqIen/FSC8UpT6sYd+YG2F7UrNSLl/Q+xBAeA6UXHLE1yPXWCkJfU
         7TNLyCxr0lm//jQxZNNBD86AOJenjDGqtVgP9njcaUwHUXWAmEL/9GYkSJHOTXiErMIq
         XMSSp7Af8omWsC8RrP0l5IQJh8vEMbSr/CM7UKozmqZKrq6ljtj2I5uBiD/chQ4emCvw
         ynyaSkJmD3u1OFZF2FGmC9TdTy/zNNwjTN7Yz75trlW1IoQDEJaQdA09oJo47i1jEaD2
         a2aIJX/MfBq9G8onvNSbDxAppcNMyTA2tShOCi/ai1TzLWTOxdcXQDLckvkvICqmgxro
         TS/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ukHRmbXD;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of msuchanek@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=msuchanek@suse.de
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id h20si483858lfv.7.2021.07.18.12.36.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 12:36:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of msuchanek@suse.de designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 46F1E1FF85;
	Sun, 18 Jul 2021 19:36:57 +0000 (UTC)
Received: from kitsune.suse.cz (kitsune.suse.cz [10.100.12.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id AEAC5A3B83;
	Sun, 18 Jul 2021 19:36:56 +0000 (UTC)
Date: Sun, 18 Jul 2021 21:36:55 +0200
From: Michal =?iso-8859-1?Q?Such=E1nek?= <msuchanek@suse.de>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: bpf@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	=?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>,
	Magnus Karlsson <magnus.karlsson@intel.com>,
	Jonathan Lemon <jonathan.lemon@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] libbpf: Remove from kernel tree.
Message-ID: <20210718193655.GP24916@kitsune.suse.cz>
References: <20210718065039.15627-1-msuchanek@suse.de>
 <c621c6c6-ad2d-5ce0-3f8c-014daf7cad64@iogearbox.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c621c6c6-ad2d-5ce0-3f8c-014daf7cad64@iogearbox.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: msuchanek@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=ukHRmbXD;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 msuchanek@suse.de designates 195.135.220.29 as permitted sender) smtp.mailfrom=msuchanek@suse.de
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

On Sun, Jul 18, 2021 at 09:04:16PM +0200, Daniel Borkmann wrote:
> On 7/18/21 8:50 AM, Michal Suchanek wrote:
> > libbpf shipped by the kernel is outdated and has problems. Remove it.
> > 
> > Current version of libbpf is available at
> > 
> > https://github.com/libbpf/libbpf
> > 
> > Link: https://lore.kernel.org/bpf/b07015ebd7bbadb06a95a5105d9f6b4ed5817b2f.camel@debian.org/
> > Signed-off-by: Michal Suchanek <msuchanek@suse.de>
> 
> NAK, I'm not applying any of this. If there are issues, then fix them. If

They are fixed in the github version.

> you would have checked tools/lib/bpf/ git history, you would have found
> that libbpf is under active development in the upstream kernel tree and

So is the github version.

> you could have spared yourself this patch.

You could have spared me a lot of problems if there was only one source
for libbpf.

Can't you BPF people agree on one place to develop the library?

Thanks

Michal

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210718193655.GP24916%40kitsune.suse.cz.
