Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBX5EVCBAMGQEXBEPWMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 960C333730F
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 13:51:43 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id i6sf9889939edq.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 04:51:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615467103; cv=pass;
        d=google.com; s=arc-20160816;
        b=nMba+BgsfMcJlW+JKt+DYyZHYaClvNvAZDv46igWTX/6hIz0STOl1HCyGqgZVSL4oC
         2KGg+O8dsEG6ejwsJQrIEx5zPeHcsPcpS5rxo2zbs+6I2JgyBwahODUvM40U0kmJeQfk
         7fChm3EceF4lbVaPG62+kb9PEEVjslrFkvND58bjofHTUILGWH9/9zUeNBPizQZVFqDf
         VE2oj7epF79VNNOkQN7Tvpf+VbPg//XFtRxmp7cb9mS24Zml/Q4dmeSyTvKSyAMLfgOh
         33Qxhr8sjHG82iwQY+Nt6hO9rujqL1ty4hq3VnVyOMDpcRq7TlPZvYZOBT+d5GDlyJp6
         7TLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FCKQ4CXThxTen0lbQTwSDd0IBD5CDskIq2FpLoqJRck=;
        b=BzVXmr+bhNe76LsvGLCkbfvbnic6tLr/Feb9hM+4t86tmesFSxunErNoGTCSXWPLyx
         GMviyANUwlZfhKCOxBCMDLuWCT605HvIPXnhe2rolW2aJn5CBU3KlyObex1bYMO3IxDI
         prESTcJMBjbokUalN+UB06SDalqhm+JcvzK/bTQj4yCLqiz3NvTyamDaF4R/KEYKBRB4
         tOkkiiKifdVAJChifFfR4Fgg8dTP0N6T/iJNMKUkAj117hpTI3AJonlc7z9HWAmD/95P
         QtVUFE2JmZouS+bbQNV1oUqhlUUQNfm5veSfaCMnfhZEsrk3GZT8hDOpHG1X+oaKejfR
         nsHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=F7I4zNkF;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FCKQ4CXThxTen0lbQTwSDd0IBD5CDskIq2FpLoqJRck=;
        b=VEbELxXNguqm5JSbSQsC7yPpGMhEbabh8XNOsXU/rzIKw0xEzdfA7NwJwspkP9ungs
         LH0B2yWQXAAqVXF30LlPhE6QToWUtfvZRn6qsR36Cb1Ni53oBIRm6XKzHDJLapCZSi6a
         dza1drlowbn57L6ZMWTwHuFt0tdykeWR1w2t9cRAPBVs4jDaBfnx9fpq14j1StNOcli6
         YZbPXJ033xtpLiPyX5B0uJdP7DtF7IjM6oLrRjW62KGwC6r5cdHFv77Qc3QqT2QRG8u8
         /scRpjDj7wwmirPyF2pCG237z8adLR0+8PeouSxG7zQgu2qNuyKoBDXa0NqPKCMduhne
         skoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FCKQ4CXThxTen0lbQTwSDd0IBD5CDskIq2FpLoqJRck=;
        b=ALIIQruP1+fQAwh9wP+EgNLq3yzS6N6q7+3Mh1umT7GodeQjVZcYt+YxeYeIUwMC0q
         vTD2HY8H5Sbbi9IkI90dPtE2JwRs4owuqghq1rsrjAvtNpeRoydI3WyJ0qIoXJ8I3gst
         Rh0r+UJte9GblA30gjhyY4kn3B+ztQ1nMCZH5TpJOdM4bOb9ONdwG17rciSxmq3ij/r6
         pCHQlY2XkC+8p0cUMXueqGuo2jDi6iom6uVSNbBE12H3+V+DIiNcDIMs/k7F2oCmSJKf
         fCrtevfTKk1wYen9ls391OUL2wu+KCUEOv6lnBIzLVfE1VvPgOfVdTuvuodpFcMOiWG7
         Lxhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oJVh8N4ba/NjK5Pw32hCwlDOEVV4wt+hDXG8Q2L4zBTGwjaDJ
	c3Zm4N0vRYLAncgsrqQ1DZ8=
X-Google-Smtp-Source: ABdhPJyOm3SaaYu+7vYShTVByZPM7TRIteKIRVPmOZauNhWOxcEI/BUfLMf9Xvg/SySqafOxA4MRLw==
X-Received: by 2002:a17:906:a155:: with SMTP id bu21mr2948343ejb.400.1615467103274;
        Thu, 11 Mar 2021 04:51:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:41a:: with SMTP id d26ls268197eja.3.gmail; Thu, 11
 Mar 2021 04:51:42 -0800 (PST)
X-Received: by 2002:a17:906:2e45:: with SMTP id r5mr2852762eji.380.1615467102408;
        Thu, 11 Mar 2021 04:51:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615467102; cv=none;
        d=google.com; s=arc-20160816;
        b=TIF8B1g9mDkZciY9c6+W3R/SnvX2Ar9WFPVdcHFnABtROhUhw6DCW8Eu1KG6pYCKIf
         f33O1Liz8W0MDenQo3od9XBBK0dzUtQWUXjgMMFxe3Y1GcKai+gDYWCCXUPa666I612L
         qlVaHhmtqEO2ss7dVV/wYTaIiV4RjtKresGZIy3wst6x35FcSl2B2G/lxknxr2bHoxT4
         HPtfm/zmxbfaMfs6UrUVRxa3ODwWQM0/gX2bE502xLMMP4PIeGb+0QKwYpVF1ILbu9Lv
         HbSJbd/DqPCK8DkYri+ycRyyOGrFjA1PBxp7gFKcpAFCPy6uFP9PLl6gTTTtZMELnNgM
         GKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=04Q81L86Yi8VhtfgMy5DPhkMLlrDvgeVfznIwom2C0o=;
        b=u8Rd0HOE01pBiTUU8UJVGLQM/05SLiM8cKTBLmYSmcrzk+SSZHITVDTl+Sw42AX1CI
         bl2k3LAKzDYzuwA5JZgmT1UXV2XQ0pqCV3xELx6/f0vWm1ykJDkXK7TsxGIIwlN2HIE3
         vvEvMInBZjVoS6AantEl2brJwUpJY/SMQpL0vN3cTrJruI6OPD1Rfiso7Cfpoc9h1RiY
         P/H3Cb6L9lvJ5yhZ8fhPfkDk4Jh5WyKMux83oFQUg1Kx/bvRjjZ5cAQq7JZTPt+mMwnN
         lw9Kiu5rEYf0/ZTH1wWP4rI6g0YglRmy0UPGJ9kijL4Bm4TQaWx3DXB3NcP9YHtt11nF
         eNbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=F7I4zNkF;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id w12si79638edj.2.2021.03.11.04.51.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 04:51:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0e1f0084acfb80b2ea2480.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:1f00:84ac:fb80:b2ea:2480])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id F0EBC1EC04CB;
	Thu, 11 Mar 2021 13:51:41 +0100 (CET)
Date: Thu, 11 Mar 2021 13:51:43 +0100
From: Borislav Petkov <bp@alien8.de>
To: Juergen Gross <jgross@suse.com>
Cc: xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org,
	x86@kernel.org, virtualization@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-hyperv@vger.kernel.org,
	kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ardb@kernel.org>, Deep Shah <sdeep@vmware.com>,
	"VMware, Inc." <pv-drivers@vmware.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>, Paolo Bonzini <pbonzini@redhat.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Andy Lutomirski <luto@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v6 00/12] x86: major paravirt cleanup
Message-ID: <20210311125143.GC5829@zn.tnic>
References: <20210309134813.23912-1-jgross@suse.com>
 <20210311125026.GB5829@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210311125026.GB5829@zn.tnic>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=F7I4zNkF;       spf=pass
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

On Thu, Mar 11, 2021 at 01:50:26PM +0100, Borislav Petkov wrote:
> and move the cleanups patches 13 and 14 to the beginning of the set?

Yeah, 14 needs ALTERNATIVE_TERNARY so I guess after patch 5, that is.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210311125143.GC5829%40zn.tnic.
