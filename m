Return-Path: <clang-built-linux+bncBDWIJUMT74BRBDVBRP4QKGQEJQP7LQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E1E233367
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 15:52:16 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id h21sf173242oov.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 06:52:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596117135; cv=pass;
        d=google.com; s=arc-20160816;
        b=RyO+cC2JF+tA7NDTPN0u4i+UQNMn+vvoEK84w0EUOxpINU/jReUTvELyXMu9/pJg8Y
         UVfeahUCS/ZemPuBQDXHhM6iL9ZTq0InMCvJfrH4vtH06F8zQqlD2tLhnQ/5kA+rR1zG
         hTHDWM3OlNVUiyKm8kSYN2S3n/yPSE3bbqslYOIC2YePUJb0X1pZNWPcyvMShNyxxKnX
         P63+e4xi3ntcNSKkXt+EiDcUw6v7hcH2byzLJTB8nkg+urFqTiQ8id/+lAmch9Nexo86
         cefcad1taE2mIWBzz/7vEZKQw173/f4EgzbEnz5b8pqtywycBrxCLhuIy2DNcuxQisir
         ZyFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ADSsNsKP2z6V78bq6Tj4U6e6sN0ZREs/kS4vXA2IJrQ=;
        b=gM/PNpqR9lszAP8drCk0FD1mOP3p4b3x8gFMeG52D6rAz3FYZ+NL/BTaEOIrMZXlSd
         1FWvQH2yc4bs8UNd6WTSf32mbaZcDv6qFnsW+CWuuYXviDm51o7RVMiDZtfGyFXNaTpf
         26KBXjS1bpuy/cmoPPj6mPgDVY+td/M6AGj9QwioqFc8iBQ4Ig1Sl6vnTxD2TY1b8YWz
         65r1LKT3DzXTkGzLXMgWhYGRrgFQw9NE4DjoiFPmS219DDF/Ahejd/1y9pqZ0B36yxi3
         KwitA7piv350XC1y4+9gO/RFj5bhS5O6fl2hMVhRcYpn0hv27B8sp6mzKTowWs7FLV1h
         eb+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lW33+vWw;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ADSsNsKP2z6V78bq6Tj4U6e6sN0ZREs/kS4vXA2IJrQ=;
        b=UlcVSo8Np6W1uHTgW83JMfVYQihQ8h/cfbAjB3b184bKOK5aNJA7CdfzWfu7fxVqw8
         I7WVhZtEZrrH/3ebeXfRRa7UCFsZn/u1XnWupF0u3sfiMs1QYUM+PAZhYKijFa8a2Zun
         vQlLlU9SRPc+txRuPxcovZisSScTXgIYkfDXjllhzuyjGSX/2d1IKxAaZUcE0ynmiB+i
         qyxr68tUTu+LsioJzlIXxdgFbGvFh5GFAYYGxnQjLniDrgPa83D+2tw2VF+BSr+TkuyR
         999T/cVPZU6bOn1a6rchcqXd/q8xAo3fB7ketgwr1S8efKAz4UdTahEP4htP4p7oP7wn
         sMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ADSsNsKP2z6V78bq6Tj4U6e6sN0ZREs/kS4vXA2IJrQ=;
        b=Sfy1qaZlZUYoFK+LZWVasgkR5QCmqKIBC10hR3w82qrMjpaAXsxO0azB08I1jdaX1z
         JstiCWBtb/uMYlh0YV/orTFTUO9o4PsRSQLJaY80edGcyg0xtX7g2n9XIbEIckchkMxn
         /R/KUN2mo38TorJ3pTdajinEP45BIcvnM/IbZVnRv0RC73F7IVcTeENGVlhg/d/PFyIg
         2QguSRCgPvMo8PTteVikGp6/jmdP6i5K9JJ5t3ri9veKcUej8N0wdnRjTRajLY/qAbUc
         D1lXdTBeVM/bLouHSJtXart3dhgLPqTGCcTVpndAuE0vqt8Fz/kUPX7ImoXCd6Gfc7x5
         W2NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530987yGYNJTY0iUdkoz8o+GspnTK6N/w7ebefjYSjF4vS5Zy3lo
	cn11zwMvspwjeYZUO3k5KGA=
X-Google-Smtp-Source: ABdhPJyVwxrKkv+/4jtAiVHZuVbzXj3sNhBYxiEtapP8SjRt0MdDvCYI+zMVmOXdy5Xq3VNTfL3pCA==
X-Received: by 2002:aca:cfd0:: with SMTP id f199mr8181844oig.102.1596117134975;
        Thu, 30 Jul 2020 06:52:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4f0b:: with SMTP id c11ls342928oob.8.gmail; Thu, 30 Jul
 2020 06:52:14 -0700 (PDT)
X-Received: by 2002:a4a:4949:: with SMTP id z70mr2482910ooa.85.1596117134669;
        Thu, 30 Jul 2020 06:52:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596117134; cv=none;
        d=google.com; s=arc-20160816;
        b=xb47xOiixGnwGN0MAESouVSGRvQFPqPagrYPJaFOjTg3rtAOEYDiBC7qzsuEJfuLJa
         qWdEyYWJZnOEDZqSdyQ3JDmVyGg+N08VdcuWpguTmYdHJnEQaNnD5C12C7LKk+wx8U/7
         HZWR712wEkwx10C5P0yx+Zwux8Zc9Tyd9AcyT+2IlBQ7+Ydo/5IXeP1OdKYq8x7TtvvG
         Kp1lluZWP/XiEOFfpdaP/cXt7TZyy6liP1oFIebBO8fxCwXbnhv4SvTwfoSxYTEJw657
         l238d6hRlhpYh2HW1cW1wvSaMegSD0s5XWEQ6X8/w9FAvLpLYL7HzWX4qPDTAuEcp8rw
         6XxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TqpRsfJx0AUqIY7gk5eyqjCanyOkicNh1KVxy7qGBTw=;
        b=u41yAm9XEXZgc8RuzdAIm9EzFW3d6eetGG/gQqb6Riap0cwKAMZAvDamGJOOUncCaU
         iS5p8uxWjvNCX/wW8akfMLRTqdaUDoxouHEr2HjVAc88ByIHrVSlwSJwM/dy7crCO5i7
         MD6gnA4M0nG1T2bz4gn13N9Ao2NreOndBkrWGSW7Mgqas5xqc9sgLqd6A0fchTJf/qba
         QF6gE0ihsMdX8kVsS1SiT8k3XXQcJWjibHji2i0vQL+Td195Hm/k1I169Fm/Q1V1PFKM
         bx03wJDD3t4xbH6Wwhn1FKEL7SNz/AbYtiDSPVVUD4v37S/aVQ2R2WhMqi/2cmQyunHz
         SshQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lW33+vWw;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n22si436076otf.2.2020.07.30.06.52.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 06:52:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C41022074B;
	Thu, 30 Jul 2020 13:52:13 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=hot-poop.lan)
	by disco-boy.misterjones.org with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1k18yi-00GGvl-6w; Thu, 30 Jul 2020 14:52:12 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>,
	David Brazdil <dbrazdil@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>
Cc: kernel-team@google.com,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	android-kvm@google.com,
	kvmarm@lists.cs.columbia.edu
Subject: Re: [PATCH] KVM: arm64: Ensure that all nVHE hyp code is in .hyp.text
Date: Thu, 30 Jul 2020 14:52:09 +0100
Message-Id: <159611709973.1644456.15046238262603869142.b4-ty@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200730132519.48787-1-dbrazdil@google.com>
References: <20200730132519.48787-1-dbrazdil@google.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, dbrazdil@google.com, catalin.marinas@arm.com, kernel-team@google.com, clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, android-kvm@google.com, kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lW33+vWw;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Thu, 30 Jul 2020 14:25:19 +0100, David Brazdil wrote:
> Some compilers may put a subset of generated functions into '.text.*'
> ELF sections and the linker may leverage this division to optimize ELF
> layout. Unfortunately, the recently introduced HYPCOPY command assumes
> that all executable code (with the exception of specialized sections
> such as '.hyp.idmap.text') is in the '.text' section. If this
> assumption is broken, code in '.text.*' will be merged into kernel
> proper '.text' instead of the '.hyp.text' that is mapped in EL2.
> 
> [...]

Applied to kvm-arm64/el2-obj-v4.1, thanks!

[1/1] KVM: arm64: Ensure that all nVHE hyp code is in .hyp.text
      commit: bdbc0c7a070c0cbe3009cd271c6ec8d87d69cc7a

Cheers,

	M.
-- 
Without deviation from the norm, progress is not possible.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159611709973.1644456.15046238262603869142.b4-ty%40kernel.org.
