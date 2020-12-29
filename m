Return-Path: <clang-built-linux+bncBDWIJUMT74BRB76SV37QKGQEOJM65KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFA52E74F4
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 23:11:12 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id u8sf12542955qvm.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 14:11:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609279871; cv=pass;
        d=google.com; s=arc-20160816;
        b=VumjXn0GRI3HVsCD0JeNmY5pC7b8qHv2eAvwNmRofz0nvyQHzRJmE815jxRSV1E2NL
         sQnSfPdz7Azlhk+0Ezhf17pA3//MCsN3XT7UFSacIzlfRnTmHvm7JTniLj+W4zQerKC/
         AOZY/kWtxcO7cqO9piyPC5PN937SRShqNUiX+vnyqhGSiXgUN9g8DklzwpCONnWCMV3t
         5vH07gTY4YsUbBmY26vJM/tbmB0xyJ3F4GM1mTD3YHk6Qws12aqjX6oqiqKy3lMdPKqp
         JmTUbFU26HBta745RI0Z2NlozWGQm3EJGm88Utj9bYJECcMxBpc5a5d7J1sdfBknR+po
         1hHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=s7GxJZ0nMMAWElUVzK++b+gM5IyO9LEHaUPS8s7PobQ=;
        b=Sfd2zqVcZiRLbt3zJr6rDtq4FcAdWyfllYoSvL7MxhnWeSXnR6ov/YURc3GZQZQ2Ts
         lOQr5fWtocYXEjpOdjnh7n9nYMHLIlsfWrpncimp6dhOwgakBZ/gB3BJgDOjPrgq5tfM
         bV60bKjGEg8yKHnzwBFNIhIBwegMTpprogGEyv7zIFZ0zPIuOjgcNQBh3av2VjmNgUN8
         9wbzFHa9eXTJM+/zrACf04ZcCqQSxUuAX63dWQroe8231u9VYB/YD28rlQCodDSgihec
         fsYd2FztQdhXsfXn/N6sqQl8ejyvlsAouGyUOgHYYeyWoy9lVeU88V6RcnETAa6Vntix
         IqNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s7GxJZ0nMMAWElUVzK++b+gM5IyO9LEHaUPS8s7PobQ=;
        b=hORqdUM3B4GIxVoog4N52DWmO7bB1XET0NvdYT/0pKjiF0LIjmAhjBltPa+2/u1vra
         uOI7XxWL1jPXevQLvCslWb0I12wTTNfTgOh9c6W3kwg2qKVV1Um2f+ospBPoe5/7NtsF
         MI9E/q4sULZ50t4LIgyEcRaNvi/5bZVvIKYWTRemLmP2XxPKQzprcVmgFuVvtJk0rYpZ
         WHqbyCm1KvqUIFvbOTqXHNe3FH8izrSJdVQ4KuXP1XEbcYKtYrMl+1u3Wn/QX2wiDq9h
         fx2gooOKx9Oo3kIYGwvCHDbDsrhtWE27i4bTC9e8O/OPbudrK827WnfIPKMSq/y2T6KO
         jbsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s7GxJZ0nMMAWElUVzK++b+gM5IyO9LEHaUPS8s7PobQ=;
        b=NofrjV6CatD2M7Kx+g9F8VTik9gytGtevVGtwaehg3NyIqHzlDqCvvZ23IbSPJhSr3
         W8fOYJ9kptFfCqcqktkuJzNGColr5N0RaLJVsTJiVYSyeqDGrZhDR907nIxx0JVN8mtG
         lT8WUzLb8gYGv39/l4t3NUVdBXHNdFO7UEC36QSXzUVMa90U4MElz5emwVfeEv8otxML
         qTKArYO/PIc092XosNNxGBblduBx5NsFtxxssN48z2SNByQzccFe5VtY4EBbIp0Q8und
         5+edEIzzKWOLZw11fvMvK3CnNUele13mFtfxFlTlJOlG0E2Bw6VPGbxr7Na6l3yShDO3
         OQig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xlpwEfegcl5VfQvkkeSR6Qd1U134KwgBlL6P+pQPOTbdxxyXE
	1a/DAtYFJDpg43zAbzH03uQ=
X-Google-Smtp-Source: ABdhPJyVWOcLruYnNf1SA3tCt0fjQsSY9aqq04EEswF9MbD1kwmffqzxuL3NcX0zubyu5oWInulMjA==
X-Received: by 2002:ac8:1249:: with SMTP id g9mr51314644qtj.377.1609279871353;
        Tue, 29 Dec 2020 14:11:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea19:: with SMTP id f25ls9548454qkg.7.gmail; Tue, 29 Dec
 2020 14:11:10 -0800 (PST)
X-Received: by 2002:a37:aa57:: with SMTP id t84mr51844938qke.348.1609279870822;
        Tue, 29 Dec 2020 14:11:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609279870; cv=none;
        d=google.com; s=arc-20160816;
        b=MLf7y/VGowy9L57Pe/jFh2qYMIFJIM5yBsrC1mMjN2v6o9uq1xnOQrCI3yA52bggUi
         8tqPu45OrSlThvB5GZ4W/g21MnQitd8jD5NPkR5k88wsCj7dMRwNeo6O0WH8YTkHJArj
         TPCXrM90mjLXRf8QndkPP6AiUqquCjIUzbx4q9hUpjK1pptuDXZMqarTmFoOqlo25FkC
         lTFkge9bXR3LNYAUUvBVM5jvA1CD/+DFBk//hRvE7pSCv0tWG6C+x0cezOe+lwXfRGWc
         CRGY7IsalTp8nnPXBEpryuA7ZC8uOT11rgtI7cmowpkZxFNAvKbttNdiop/ahfMh/sC7
         h32A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version;
        bh=3zln2SPnpbHJULASpv/nBXg51ecpSblQByhqXfxr500=;
        b=rPUNT2YPD49v4uOCYu2C20L77fdFf1VaV3Cyo1CmXeBJhPFXltOrVO9qsXugPxrvo/
         hYq6Yh5rTi/oymJQA5QOiNFrlTADGd2qEcNfKlJW+mTGfKLDS2IbbLl3XJpKW9uXlrwU
         WplBURbiBWb2ASq92lH6zMjToveEe/LaZ6PoRud40Pljfu5JcR8PxMWkrpR096+MW0in
         btG2V+Tm6g++7QAxeaCAe/zyXHq9k8i9V3A/QnXlj4RB8VujQAeqwLw+e9zYcKBsiz8E
         RnGZ7dBEQ/1bMI24TJn5WvCOylJ8lqoW+P9BWD/b0zEBlplGn3EN9qQUvEylO2GcTlge
         OAcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t2si2650742qkg.0.2020.12.29.14.11.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Dec 2020 14:11:10 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 78D3020825;
	Tue, 29 Dec 2020 22:11:09 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1kuNCt-004Ti1-6E; Tue, 29 Dec 2020 22:11:07 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Tue, 29 Dec 2020 22:11:07 +0000
From: Marc Zyngier <maz@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: James Morse <james.morse@arm.com>, Julien Thierry
 <julien.thierry.kdev@gmail.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] KVM: arm64: Fix section mismatches around
 hyp_cpu_pm_{init,exit}
In-Reply-To: <20201229214336.4098955-1-natechancellor@gmail.com>
References: <20201229214336.4098955-1-natechancellor@gmail.com>
User-Agent: Roundcube Webmail/1.4.9
Message-ID: <49e9d2e2e7103c49882b54c18c567667@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: natechancellor@gmail.com, james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 2020-12-29 21:43, Nathan Chancellor wrote:
> Commit fa8c3d65538a ("KVM: arm64: Keep nVHE EL2 vector installed")
> inadvertently changed clang's inlining decisions around
> hyp_cpu_pm_{init,exit}, causing the following section mismatch 
> warnings:
> 
> WARNING: modpost: vmlinux.o(.text+0x95c6c): Section mismatch in
> reference from the function kvm_arch_init() to the function
> .init.text:hyp_cpu_pm_exit()
> The function kvm_arch_init() references
> the function __init hyp_cpu_pm_exit().
> This is often because kvm_arch_init lacks a __init
> annotation or the annotation of hyp_cpu_pm_exit is wrong.
> 
> WARNING: modpost: vmlinux.o(.text+0x97054): Section mismatch in
> reference from the function init_subsystems() to the function
> .init.text:hyp_cpu_pm_init()
> The function init_subsystems() references
> the function __init hyp_cpu_pm_init().
> This is often because init_subsystems lacks a __init
> annotation or the annotation of hyp_cpu_pm_init is wrong.
> 
> Remove the __init annotation so that there are no warnings regardless 
> of
> how functions are inlined.
> 
> Fixes: 1fcf7ce0c602 ("arm: kvm: implement CPU PM notifier")
> Fixes: 06a71a24bae5 ("arm64: KVM: unregister notifiers in hyp mode
> teardown path")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1230
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Hi Nathan,

Already posted[1] last week.

Thanks,

         M.

[1] htps://lore.kernel.org/r/20201223120854.255347-1-maz@kernel.org
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/49e9d2e2e7103c49882b54c18c567667%40kernel.org.
