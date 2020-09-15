Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBJG5QT5QKGQEGLOCQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFF726AF41
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 23:14:13 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id 1sf713058lfq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 14:14:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600204452; cv=pass;
        d=google.com; s=arc-20160816;
        b=lgwiCvEh8ra6YCX2isv+SvWRttcRN9BApANuoRbeIhvwVoedKwqw8a0rBqWNGOV80E
         hy8dGsy46by9eZTSarnG7XGE0+Lp8shsLSFnHyupBw+IgP+J8WHXYV9TCqKvRNITkaY7
         6OmEFpU/ZYFUn6sM2TBj2kbvFUqLAxpW6J3DybhoROOHh/ZmumUUuI9OvOWNB5+SU3C8
         i0VVBcKYvNe8wFk9b9VKzTplLMts0YASLvKT1s4rY9/FEl3P3T9vv6Tcq1RRglxNyMe8
         tf9QiCQsZSVolVRM5L5HChqDlO7cDsv54GTCJaCev+S1T8ENCvlCd6D6/7Xl1GDTgo58
         EFQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dyFZW5m1ejn3B/7HvOfaIPn5cWVzhTmMPJb26Fz8Vow=;
        b=YJR0xGvlBfTu8hIoBWEwJW8E9DdcNfBkBRYhOUqQvxSLgFNQ0Yis+qdNwzvFvta3SL
         mVYXofXaasVtwzwGFqCwfG4sYl6cjuPYSj+NCnkLUl0tPh/bkfuKKV+FRlTLwZgOV2wq
         0UAULXI5j0/vfBbxOF1Uv1prpH08k+qWPrHl2JxARL4FF6bus4LQX7DFWyqXd84MW6jL
         7IiKxBAPIm060Dpg9h34SeTX5uww18/9rUaVu4YxfLdNvsRfkz/lAmsIckjTBGtmAyZi
         N9erGQ+rh8UlKKyIZCzTtrPTnTXTMtDwB/EigEaFg02+m6DhsoHFvD26J55qIH1K3XzO
         HSLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=L1FxQ7fQ;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dyFZW5m1ejn3B/7HvOfaIPn5cWVzhTmMPJb26Fz8Vow=;
        b=q8EMgSUHcmoif2/kg34EDzaDFKZUA/8Q/fzFIr0l+SPC+M/YwEzvFYFeNJgkSxALXE
         x7W6J1+xtlUPQZzFsNrNe/MzGG+9+1Kr49IjWlCn2xlXDSSzidGfOBbHkDoBZbCtxWPF
         IWXFiDXgHf4VLxfr3jUtyAiNN55abSfeQz84Qdual7uVfPW6rP3EOgT4oeuSrnnLjBlR
         FCL3nmXOlGotTAbL+YcQj7Jq7vpl2oX8A4r7d2kdBBhjYAhJj6rT07DI8ULglo7M4cGV
         FJwBHqSamB3T5Z9L/xyxmvp20MY5/I15lVjZg4pLX47wmbSXdPMnb9Sf8tVuPLDmUm+p
         +Rtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dyFZW5m1ejn3B/7HvOfaIPn5cWVzhTmMPJb26Fz8Vow=;
        b=oOq9s/EQ8ANEkXnfJJ3Qm9BCiZh6Tn26HGcRPmv5v3AfW2E8ikoLq93Xm024NWWtuD
         eTCugj0Hw3baKcpDWX+MeQ7P+tUjCmg4ybDSsrJcabbcjMSGnnPwoDrJ5M58rhgQDOJr
         ScE1GP9WgM0TJpPLqLy3MZ54ywAxnHqElnOu1f/SCTlhnc5vu5xwy9nV5HQcN9FSwjJZ
         0DnxGJxlQsHEeDrAKDJqscPPq68Lo9ePiLPk5HSNaWluOAwBkj1mqJuf/6Nu5qU/rwKz
         MlSSX8jXJs0lOBjTZRHe7rq2KrIqQsTL27vzPIFETL0t1nGr0Mg3cL04DNdDsAPqMS2c
         JguQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305eHX4FgTm9QB6SGYXleTHjS4pC7vP7bfV161IS+VqnZWT3RzP
	2k4oCCu6boyVi2Rnq93ByNs=
X-Google-Smtp-Source: ABdhPJwJ1Pp/G2QxtJAAhy5ggcF2z18c4UPCMuuFVlNqQAyT2nYDeH6bpUyL6pRhafaSvuO7MG9ywQ==
X-Received: by 2002:a19:6b17:: with SMTP id d23mr7059473lfa.322.1600204452529;
        Tue, 15 Sep 2020 14:14:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls14056lff.0.gmail; Tue, 15 Sep
 2020 14:14:11 -0700 (PDT)
X-Received: by 2002:ac2:4c19:: with SMTP id t25mr6022751lfq.375.1600204451528;
        Tue, 15 Sep 2020 14:14:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600204451; cv=none;
        d=google.com; s=arc-20160816;
        b=HXd8M17pFVhVK5RZTVX8qFJB55Bpd4p9etvwRXdqR17Sm8BKtmo/b4qV/0yooZso9d
         qVS7D59O6o73fUYordm+0Me47S6gxxT4d+BiCR4wJDLIWOwWGtquks/YTfv7vCkVid3S
         FfIxEcgUqs4K4ziG3AKXWkncDSdEj1HhW+RCqPvZzOH+2EdPPLVtXvfuer4Zf+l/qCAz
         +JgIse6vz9f2JwZGQsrwfIB0IkImruQk9hRK3A28iWOdfGxf42QU4r6vzsl0euk/mcgZ
         zif8W8EKxlN/KHgE3MyZF0ck3GCY3Rt3R1ScWaj/DkBuUUPhhR7ywn0aQpNhiESJYGgm
         Ahkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0nhb/nBrUMRLS0RjoFkD+iZGVigN+uyq9N3z7G1NsXs=;
        b=Izbp6fjOQLwonoD/JQQqRhaYY714pAsw8frMcR7xao9pNUsybPP0d5yk130v0wpmP9
         4NfdHT3f2BXmJ45yWgSCtB4tqQYIeDX2t5YIzxJNAQznBkcddoNQktCC+o4Sfc4XyA89
         1Bc/jRVm3GTITuQVrLedAMN7ACwvqWdy0LTLh1jXtcPdl86PwpVXdsSIpZ5t6GwH45gJ
         Rgnhhk4GzFvXfRHbT7t3MxVT79z8N9YWYaqSsTUIuyGdUDknpbQfHqvgxDQ31wBIGfV+
         VWi1g31Xi7BKh03gO9fDyHi1HyahRP5XooVJYWtlYC+X2j9fsx7c0iAW2kdUmip+xkoY
         y90w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=L1FxQ7fQ;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id 143si352517lff.10.2020.09.15.14.14.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:14:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0e42002ec71013b50744b4.dip0.t-ipconnect.de [IPv6:2003:ec:2f0e:4200:2ec7:1013:b507:44b4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 9EB7A1EC0268;
	Tue, 15 Sep 2020 23:14:10 +0200 (CEST)
Date: Tue, 15 Sep 2020 23:14:02 +0200
From: Borislav Petkov <bp@alien8.de>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Rong Chen <rong.a.chen@intel.com>,
	kernel test robot <lkp@intel.com>,
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Marco Elver <elver@google.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Message-ID: <20200915211402.GB14436@zn.tnic>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble>
 <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic>
 <20200915210231.ysaibtkeibdm4zps@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200915210231.ysaibtkeibdm4zps@treble>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=L1FxQ7fQ;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Tue, Sep 15, 2020 at 04:02:31PM -0500, Josh Poimboeuf wrote:
> panic() is noreturn, so the compiler is enforcing the fact that it
> doesn't return, by trapping if it does return.
> 
> I seem to remember that's caused by CONFIG_UBSAN_TRAP.

From IRC: yah, CONFIG_UBSAN_TRAP=y in that config. But why doesn't my
clang12 generate this ud2?

gcc doesn't do that either.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915211402.GB14436%40zn.tnic.
