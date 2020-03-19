Return-Path: <clang-built-linux+bncBDDL3KWR4EBRB6HLZ3ZQKGQEUZEPANA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4065118BF1D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:12:09 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id w11sf1394119wrp.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:12:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584641529; cv=pass;
        d=google.com; s=arc-20160816;
        b=MrIR+cuFa3WHfF5TdkBXJxxs2AzB2GeKDFjtnaNeLvJA5pEqQdx8N0BWwrJUtnff1j
         yoCvSdmHv9/X4JoVWV01QQP0bw3vktwVW9IvPHIAmo3ejmp6H0Gbc2XfzGEJiG4jylSa
         ahbrPg7puk41BwN4zUZ+55z28eNfjNo29U/s+JT8gUARwpVntN34I+mzNlRKppHix29p
         cdLaLONrVBZvPTrV6RH+ZHmruRPgliBLuiDh9Rin3WZ1HjmMK0JKArd/vIJS3OR4MR9g
         HaB2wCD+Os2LmU6asbaqhgvIXI73gFVdX3eTbr9ZsLRCyvabETFxPkq2KZWsRsjitS4i
         kCDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=h5b4tvptmap8yPX+itJJugp8Y4+30uaMvhYm/c/cPgk=;
        b=azS+UiFdNeJvvJiRw4NmK5kz83zrB1vp4EnF7z1kh1ZSNQ08DjJ1q2WJDEiPHFDZh3
         C8e9ueIpTqbp0JerkiBKcJyC7soYvRGnYCeKWpR7ZQ3WowVR+Lmb5ajTYWb+KsYKuxVo
         X1tsNn6a4yzY2io7EXdpIB/l54qksw3HCSMbOzTqGPGuqj/0Kb3WzY4205FZGHZdTeeQ
         VANDvW1bwwWIc32NvhkLdfmc+uAjmMgF0YWDdejzEWPY39h+sOYqIp/fLzlmDBPxWL6m
         S9uuBmnNPeOE2rBeRyrCCdZIATRtXWnagMUDJTwAKnQzOwfSQxatlaijViEC9KF0ZzAl
         vGGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h5b4tvptmap8yPX+itJJugp8Y4+30uaMvhYm/c/cPgk=;
        b=Gg3RRzQgRGP0vLkotDFMGk6vzIE6T3ChsAbwNYq5zDH/oGQOxl9uM/FPQpc/vzRiGn
         YmG41g4Wqu2n43Gi1mxg78R8iiJs9QszwcivHtXXMuvMcpqvLGEIHfPKuGmOeoemltx5
         3Y5IqXZNq8XBtuFW1f0wZTYcDD2xn4Eba1bLVe2mgXJa57O4xEHtomzNAHwnNYzCx7/F
         acHps10BMwQAoFRQ7txPYRV2oYlja3JOdteIQpmhiq/NoH4/UgsvCUesogg3XmzakHRZ
         LqD7WZ+E+JAgnQSsQk7hJZ7trVm+5QEYeg1SEQfQJThf01UT5zdIP5zmRZKQ+QpyuLlt
         zFug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h5b4tvptmap8yPX+itJJugp8Y4+30uaMvhYm/c/cPgk=;
        b=J7/fsTH07N8FJh7QX2FWhiXyGSVYBsuUUpzah2hRr9YrucDxIOXa9E30c7hJm3/XQk
         LkkIUb8pwbkuXnPPBsbu4wTSasvEeHge4zLaEX5QdxegYuY04te4HrnrSGIDG4OnIyes
         qs6E82XwzWLqCJyRtIv4F5/TXIvSaacvxuoMX2343c7b8+rF3Xep4A0aAhhsrvqOVWfi
         MPBwd26eVffoieeawEPsW/Arnmo5mXTMbIBToPB78GgttHpf1idOX2XXiwpOVF5Gf894
         jUcBcObVjJGOAMN1jRr+tHF6Q3Mc5cMFOe7T8Tm5UnS4xX3yLTdCJVhggTBNo5TiCQdT
         Zd1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1zIHIV9E+jGHy0gQkixMl2oWEDOf8m55108pOY/ooEJSwpG07N
	okjWArIkd6LjcSzeQufrg4U=
X-Google-Smtp-Source: ADFU+vsxtuoIPl5t9BCSS50OE+6FdKXwuSobL6CNvAnQjGzMVfb2BGLnFVv+zt03e5czBcp/IcLB3g==
X-Received: by 2002:a05:600c:212:: with SMTP id 18mr5394173wmi.144.1584641528639;
        Thu, 19 Mar 2020 11:12:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e90d:: with SMTP id f13ls127567wrm.1.gmail; Thu, 19 Mar
 2020 11:12:08 -0700 (PDT)
X-Received: by 2002:a5d:5451:: with SMTP id w17mr5834197wrv.142.1584641528006;
        Thu, 19 Mar 2020 11:12:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584641528; cv=none;
        d=google.com; s=arc-20160816;
        b=LkghiY1D3Oik/O9tbfhIBCebSlI9xXIy5ZcEDSIHizis5FtP9/yc6IiEPyOetyYlZn
         RJVphYpPoOekqe1TUkyL2RMx1rNQTnlcOnD8peibI7N56uH3I6epEGi1uOTh99pmEv+Q
         d2K25tL2e4DjfdgNsnvauBYTT9p/CVB15YXxVwVyDlqW0lyJfHVgiTNqKj+WMuhwDRwb
         QRVyvUXtX2UITP9Uyy7oVPkLb1yz3hObwb4YhURQdIGkej96GbvfUTLKQ+BNICPcPW7Z
         WGaGOT+B2y5v6kJuo4wTrrd88urMEjaDZyQQmeq2Tk/4o2PpWJkVK9wm/x8jJPc3FD2M
         KjHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ofGCC0uVyx0TXMvPd+vgIFqDYpytAeWtnmzSuKn8N40=;
        b=xEFKvGOrBpKz0ukUHJaL8p2KnQbVD5qzCg8q6kLQd9W97gZQHO48EpwZeiSL+2AfV6
         H9IW9JPmgoQG+p7LDfZ1vDASFVLeqy2t2Vi2jgC9xY1PjU9CuVHoemKb7YWFOx046euf
         kb2bAuxHhGuuJawh8k1xO3F0gJbPYUObt6NNwTlQO1/8sz9SmQ/moMzUxt6fnupq6WbA
         j1uReYBUVWwRIr8RSgT2G0jEEnhyCzgMC1/nQyFqqRVvKddNmVx4M45QJYXIP0NOVA14
         e0F9F64chBtS9awoIX/Ykf0oCdstZr6rSgV9jhH4H7YrpU+g3DB8ePDFIlM3+efHJBy1
         zOIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y201si341004wmc.0.2020.03.19.11.12.07
        for <clang-built-linux@googlegroups.com>;
        Thu, 19 Mar 2020 11:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35A3830E;
	Thu, 19 Mar 2020 11:12:07 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 363AE3F305;
	Thu, 19 Mar 2020 11:12:06 -0700 (PDT)
Date: Thu, 19 Mar 2020 18:12:03 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Will Deacon <will@kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
Message-ID: <20200319181203.GB29214@mbp>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319141138.19343-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Thu, Mar 19, 2020 at 02:11:38PM +0000, Vincenzo Frascino wrote:
> The syscall number of compat_clock_getres was erroneously set to 247
> instead of 264. This causes the vDSO fallback of clock_getres to land
> on the wrong syscall.
> 
> Address the issue fixing the syscall number of compat_clock_getres.
> 
> Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>

Will left ARM about 8 months ago IIRC ;).

> Cc: stable@vger.kernel.org
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

I think Will could take this as a fix.

Thanks,

Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319181203.GB29214%40mbp.
