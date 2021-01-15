Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBD6VQ6AAMGQEJCFRPVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 662EB2F853E
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:18:40 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id f20sf397692wmg.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:18:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610738320; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2/5YOvN0dZMqfRkmotieR7QrG+CzyVnA4MPbhD0lGV8MYRY//UdJm0KZ3HX7jvX/a
         MqalDzHy/rPahoFt9MAOUTC0/cBD7BAHAnuS09Hih6O4q2pDRi/DvTqXtqB44rdDOjB7
         Tw8lswazrm4hITK62uX2w/25UYoCUntfqC49Pyw44pXGkko8b8jitZ/tasbkGcYVV8rj
         kqSqzW0fh4uY4t8ISg0vdzkFXVoOBA0fiKDIBK+2Byb0u44bfO8mlWCYTjiE4hHjIaZX
         9II928VjEIx6m4Lpd4jZi7acM6RFY+lCkF7vhLXbvy0P631iRU/QROYp6xL3wEdRn9fR
         fwtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dkyz6twSbY2ga/Dnn8TcORJSSmN3OVrvhwun+gOkj1E=;
        b=FVB15Mu2SeLgpG1ehTsvyPk1HlAdt3oMwiMWep0by76/Y8R2GHKc3Gqz6GhqVws5RO
         wIZ/H0IOpGT26Zk6uybLWQcw7NX8LAM5rL1JSGNdyOh+6MY0GpGH2NhudlSLt81Sw3s4
         L/Npiaj0sUPKpUaqyeXniFVEZ6hCOO/qWdP41ymshHD7Iad1X4NkoADQj1L7ZKZtBnVd
         DL0Um1YZWo0/E1A+Ut8s2941ViPvd69NgzR7FgNzMG8eF4TAuLjpMeQ+F+OUVguwpnxX
         4ik1x6vJBjal2MsK86LzgiWK1xDBInqaNJUKpyAJ4BQflRLbVRU9kE21GEtVhxR6vUo6
         Oxnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b="a4/U7CvD";
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dkyz6twSbY2ga/Dnn8TcORJSSmN3OVrvhwun+gOkj1E=;
        b=bqPJvo5egZ1DVc4aQBUSNHJl+t8wWvo8Q0w2w7uTNbTvrXmvdlgOR/OU/U62QrUKkd
         0oIY/r/JJ4iSplBp1vQOGB3z3Hx5V7NDIgIudbPoZmalFixVROH3r4X4mbsiEblYr2nB
         Gz7DliFti8c5LWm5M0/6wQCxlDvJocpw1PZBAnZTMSywgWOCEG6dp2qh8dprh9gABR5F
         r7W3VnowtLa3is1IUp1zXlwur998IlgHYAM89H9n9EFOIqCbl+881cJ755h7HIUEggCs
         s70kWyIeR0tZS8fwvT/xzs6nILdGFddxy+DYn7B0jTlQxM4n5pBQzR7ucUpDrOOTeOP4
         y5lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dkyz6twSbY2ga/Dnn8TcORJSSmN3OVrvhwun+gOkj1E=;
        b=ejF6yZn7CbuMOXsxDoKpnoyQxcs7XeJI1PAl+JpggIaK23fK9zV4AGdoXzXFU1cQCH
         3DYohMPVYzNiTPCBaEAsnRi89ckxLsO5K2UqvIoH+7EiNINfLjkQuTjp7lCP6b5RmzF7
         BL81GY+jw9V+RlcFM66Co/NNZhcXWCPCdgjYRPUepE7vN0v/EwKCz+DvhVkUvNZD1nY4
         90zD8thUQrNW5rOm+nea7v1xqW6erU+9mAraoT+zrI3K75slN6X8JaJxJV92C7X/So6v
         ofk4HQngHLF/JfD9T1/8/vo0SSjVX67vfnzCEqsue+bMRdSx6vcbc4/LgoIymNZ1UjX0
         AsiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533I931GqxWAKGmH9WwvXX2qHt0+N4uYWkDotGqHFJYUVl4m/hMp
	ELyKVKfxL5I5nKVsAdDeHZs=
X-Google-Smtp-Source: ABdhPJzPIkt0cjY6qAkf85vWdbxTY++VyWdQycKPTmvBy5UtD7t0DjG8y015EZ8ho1QRh92FkWDC5w==
X-Received: by 2002:adf:a2ca:: with SMTP id t10mr14563716wra.370.1610738320088;
        Fri, 15 Jan 2021 11:18:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e608:: with SMTP id p8ls1153573wrm.2.gmail; Fri, 15 Jan
 2021 11:18:39 -0800 (PST)
X-Received: by 2002:adf:f58f:: with SMTP id f15mr14721445wro.388.1610738319278;
        Fri, 15 Jan 2021 11:18:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610738319; cv=none;
        d=google.com; s=arc-20160816;
        b=Aace9EAxz/zSp5HLI3yiLf25msRNGvmKsy1zEn67mly/CR5gQoJ/9x1BoRy4wXRFgQ
         TXfcShBzCkF4vziv5ocACo/MGTjNN2vIAWJFs1I3UE0BxSLw0Z35BpRHKstBJMjxBWgb
         DnGy7/EVz5QxcEOTTcoIqS1XBY1GVv2UVan/HodoVXwo7/Tb3c8c0p2vQYhTUlKXYT/j
         SJtw1DasPq64pSS2NVtnOiRcRrKrlZAjxb5J/NzFcN7UV4OSCh8BQuLrwejZFS+YyBkf
         ZkF8lENdZl5afuINfqnVYoiWRDtovvAj+TEDFn4j80T7GufFR3Zn9F8PkDt8OV+TFWIt
         XSNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vRaLSxM+z9kh51zGEHjPKubHQKF9CpJm494sShQUxrA=;
        b=DSrRgkLlbBSQt0nvrvS9Fg6XhQsHLzSuuXWbfokeVv7xOE9+qqGcg3qAxohYVAE96L
         TIjX/TOv6XRAcqYCWoeaMHnhKKsGF1ddVSgE7kqRYxbd4EdJ4owMvjKDnOH10CMFKnMp
         teOxnuXcoqgmkZI0IyXjS95gU0BWn7o16e7pXIHjK97ksFBmsrcfZp0vm2NwEu1tEmkq
         6lBscu8b0tt0Zg+6j9RxttpYW3Ok3ZHYeT+LxCC2MB3UDEOyiIbxDbCE60T66XcrYmZc
         XJ/Z895PELBz9qSGhIHfkQa6R0ieGx6myLhGJXsGYja3nWvRq2Muh7LIbMQ6D3cqXzSr
         xsQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b="a4/U7CvD";
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id 10si774220wml.0.2021.01.15.11.18.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:18:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0acf007cb1195bb528937a.dip0.t-ipconnect.de [IPv6:2003:ec:2f0a:cf00:7cb1:195b:b528:937a])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id CE2441EC041D;
	Fri, 15 Jan 2021 20:18:38 +0100 (CET)
Date: Fri, 15 Jan 2021 20:18:33 +0100
From: Borislav Petkov <bp@alien8.de>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210115191833.GF9138@zn.tnic>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <20210115182300.GD9138@zn.tnic>
 <20210115183203.GA1991122@ubuntu-m3-large-x86>
 <20210115190729.GE9138@zn.tnic>
 <YAHo3ZEMu+6mESZA@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YAHo3ZEMu+6mESZA@rani.riverdale.lan>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b="a4/U7CvD";       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Fri, Jan 15, 2021 at 02:11:25PM -0500, Arvind Sankar wrote:
> That's how build-time assertions work: they are _supposed_ to be
> optimized away completely when the assertion is true. If they're
> _not_ optimized away, the build will fail.

Yah, that I know, thanks.

If gcc really inlines p4d_index() and does a lot more aggressive
optimization to determine that the condition is false and thus optimize
everything away (and clang doesn't), then that would explain the
observation.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115191833.GF9138%40zn.tnic.
