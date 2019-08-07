Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBL7OVPVAKGQERA5RDUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A1D850A0
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 18:07:12 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id 65sf52738059plf.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 09:07:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565194031; cv=pass;
        d=google.com; s=arc-20160816;
        b=XMCGCXO+9c4SgUjIImQI0Ay4kV/HJLS2GDd5+IRzFgOkrh4JkKQ19cb9qbnW6jBPiz
         gOelWF6bFiOvIAZGhe46axneY7mcf8b0ARiq0m3pru/gg3DQn3LC/gW4fTEWbj31NYg0
         stdBEQOSnNYIs1EXP9Z7pyvEvUMrfm/jzOhV7K+bXCc6c5g+oQDtml3dRo92TERMnNdQ
         U1soI/mlms0mPV1z+zY54O+O2Q7oz3AGaftPSLaCB/QlsTmFHrAerNTwU03bXJ6FNTB9
         Fnmn0TyHZAmPOOorkh0nqrkkSiia2qjrpKIfFmsZncVV2RfxsmUyaK31LS8qQejRP7vw
         y0pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ArCeIGdn1gC7RmSZGuwtvXgUodjbvG7RhuM93jgX1jE=;
        b=ZEzUUaAfaGgignceRlwOr24yu/WVy7fdpSrfzyWuraxWC/qN8slC/Mrg65AVDhm07x
         HhS0ENyY1naMjwM89vyFiK89BA5F0s9BsIDxCqUHWmRUXeTR8CkgR3CDxw0AM2x1mC/Y
         Ym/6WxUHiRhPTXfMY9bGryQULkA4RJWZcs8kAVRUBIhGOPI5RnWU2yTGHWoUvuzX9bX2
         00oAhsAmemMZ2Xmvq0Vq31KATVSkjyLy6JrorCaRw/hQZd+O5ThJcKUxgiQXgnz1wNFE
         6T+3/QfWe6Nu7xYBY3KBp7i7gX/cwMMmt8CbeX2WKLFPg6CMlE3s46FATIeMMiMuK/xo
         3HMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SEj+6gpn;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ArCeIGdn1gC7RmSZGuwtvXgUodjbvG7RhuM93jgX1jE=;
        b=rhBLU9KCaddfGN3PO3Ogvg93ZRoOrUMMVqjz1j3NyJFrLrMTPUyXlWYRZkN2xezwA3
         76/+XPK5qBmcAHftwEuTl6DJXB9rfo/qv3xZjM81fuvHylMSFoilTuIJ1f5wlZjATZt8
         2+5nKMaPRyVcZjfeYQV7s55nx1heyjeIRt+ymW3Kr0WRZkBj+5pZxKy/ub0JWdaPsEN0
         Xl8x77M9kmHxqZ2dGB2L+DQwc1A1VgICscGsrYTHD3bYwb2+rcqSFGxLf12lzjSTJcN6
         blTgiItZppBjQdUgHOMH+KN71L41uynD+7DhoQg2TTGBhk1SL1yiRaYpIEyv1zgMNobk
         rCTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ArCeIGdn1gC7RmSZGuwtvXgUodjbvG7RhuM93jgX1jE=;
        b=cQZtoW+0uhc7XHuVWJJjpEqg6Y1qs+pU4NPuVRq6fwsFZenT2PhmAkmTKoLVzmRGOd
         GqWU5mWBHZXS12OOFiMWDZ7Wn9VO8QdJ1wAHIzO00APTNLjlVl49tSCwywXkI8kb0mNB
         Ix4oVG3la+xCLUqOB+17GySu7BIpuFXVB3HoB2as9KJirAPAlg/U4dTgai4w8ylB9OXg
         AuQokXWQJmJRXb3+iAxd451cScqqjcJPPQ9vnm7HRLfwXPtS9gqnEE5gQu2XppLHCpUA
         NWzq95r/rVS2HF40laMOpZv/OLISgQsjIKn6R4ae5y6zSecmHQgfp4TNstmgQhY8JSiJ
         xEFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWAWSkha70lqfnPt06R47Ap5V3gFVQMt5IpKoGj3qXSM362T82M
	MsGwcbVox4BrfmkWrVrLtUs=
X-Google-Smtp-Source: APXvYqzizTdaYgn+UNzcwYauae7cnxzwNWIp7IUzOAbdp3kmeGrhlt4sGETyWIr5Sx5GqiJS3gr4fQ==
X-Received: by 2002:a63:6d6:: with SMTP id 205mr8590192pgg.262.1565194031430;
        Wed, 07 Aug 2019 09:07:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:75ce:: with SMTP id q197ls20886121pfc.3.gmail; Wed, 07
 Aug 2019 09:07:11 -0700 (PDT)
X-Received: by 2002:a62:2784:: with SMTP id n126mr10227615pfn.61.1565194031072;
        Wed, 07 Aug 2019 09:07:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565194031; cv=none;
        d=google.com; s=arc-20160816;
        b=cY791ZdXf4hPDTQlIOGXAmDtuJkT8GxTkK1yZVVWG2B33MbuOqfvRHe/kwA4FqO70O
         +V/kVBECMCud00doHM0yRNw0opzfI03jogGQxFYYtoni1ReIm8NcLeTm9TOLpS7wQ979
         JmNPJv8y0pXUzJ9R5kxHEh5L5Fc619lNJ0ZJExiohnN/kD+JKZijulQ+c375zRyCylZD
         W8L2e7t8pLtWUfOfWUoRGKiJFmE7rulin69e9y3r3W/i+A3D2EVThDamG77k7r+/EzJb
         TRzH7wWTVhqvj2a5n5Bu0cgeugPfwRc039aaKGeGFOKOX5ODpndgvwIxEYWwcplGxgt2
         2DaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=q212TWBWob+GPIMhBlXu/hyTk6fj5VhX0ouHyrL1hug=;
        b=XmmKYkol5npsMunz7R9ZoFx5YZFbW8dhWuZiV/FlyfSJCE9QfIEYuWQBx++q8LDGXV
         Xnry2CWBUG5gxX8XRIxDE+3UaIIto2JUo7O4xWEzyvD/bEdq/vuTsTzgJ2lYv8JurIhE
         kbAmQjNIoxsj+8qrQ7plQmU5hzZDefZQmNLUhp1qDu3BIVapMfo2AxRQlLkVYezNWxgI
         qIRaqXIShYEFH1dGVxBGNo+rJm7AvNE7ZhfF1lHPbfOcSd+ZHm1/y3VRgsB8c+gw/lou
         c8XCPrSorAOvrR+MQ95zM63hLarb8/uCqYekgSoTX/mLVOg+/my3nL2/WB9Sl6CzHlDg
         L8Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SEj+6gpn;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y13si3648175pfl.3.2019.08.07.09.07.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 09:07:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8A13A21BE6;
	Wed,  7 Aug 2019 16:07:06 +0000 (UTC)
Date: Wed, 7 Aug 2019 17:07:03 +0100
From: Will Deacon <will@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Cc: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>, Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 0/3] arm/arm64: Add support for function error
 injection
Message-ID: <20190807160703.pe4jxak7hs7ptvde@willie-the-truck>
References: <20190806100015.11256-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SEj+6gpn;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Aug 06, 2019 at 06:00:12PM +0800, Leo Yan wrote:
> This small patch set is to add support for function error injection;
> this can be used to eanble more advanced debugging feature, e.g.
> CONFIG_BPF_KPROBE_OVERRIDE.
> 
> The patch 01/03 is to consolidate the function definition which can be
> suared cross architectures, patches 02,03/03 are used for enabling
> function error injection on arm64 and arm architecture respectively.
> 
> I tested on arm64 platform Juno-r2 and one of my laptop with x86
> architecture with below steps; I don't test for Arm architecture so
> only pass compilation.

Thanks. I've queued the first two patches up here:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807160703.pe4jxak7hs7ptvde%40willie-the-truck.
