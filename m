Return-Path: <clang-built-linux+bncBCR5PSMFZYORBPPXTL4QKGQEMWKLJAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6680C2356FA
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 15:12:31 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id l18sf24694229ion.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 06:12:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596373950; cv=pass;
        d=google.com; s=arc-20160816;
        b=m0jfe/gwngFy0Oo7+fjFaDM4zmZYoA17d4EYzMRV0WIFVwUklaqT8GMkC0QA2edIKA
         CvmgG/mGzFOn1oBAre66fQGrIy0SbY8J9vlVbGJefB6dClujNJZu1EKukB5iSAoLGISd
         6CEUhzlJc0KvktaPNLxQJNjSUmCoKMZ9bgIymw3rfkpcEnTpIFseLpL3/3MM+VwEQykg
         crIJmk1xfq+i5YNq1MTaNXbXWn4h4P+cZlzEPYM8QBG5HZ6hmThsnnj63/rdZM+2t2qT
         ME1Khuvg8Bdew6dkOxpXA6nHcvxVeslMeLiEEm8C0o4hPhU5vTEpqiQTbvO0syX4Sq16
         iOyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=u+Vmb9YnuWbH8YbdtJhwsXcBDxFqX20uSYLJBhjPhc8=;
        b=mJWfd3AlkVhh7nIli2tgwoOsbXYpxHpsEGHtv9AosNLsFSxHktA/ZQKLxHG6RNqiuJ
         6fdicyxyJdA8DQg8GOxjDMC6yo8avOkYw3LeSFJo17E68Y3f2YJ/WeiuDcXbbrDHoeMT
         a2pPNyPTb6JEoskEczH02I+ZalsCF41tgcVRIlBDFn3kBY62pwpQ4xgC9V0EnUedYIVM
         w35qjnI/3jKTv9UQC9n4lxsgzlelhZTfcYHIcQ/E53qY4YxDV7oF61G21f85hqRMTufC
         iXP559NtpxVQ6FX9TYtnMtMJ1RyGj9ygLxDvgP44dUytCdQxUgqioFkUvQSU/UideF2f
         aBtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=pLZ9eajS;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u+Vmb9YnuWbH8YbdtJhwsXcBDxFqX20uSYLJBhjPhc8=;
        b=LlvY2geZrmutoYU1Bm0AFPRMpriaZ7NgR2yJFC3OR2gef/kSFkPDBOaSwI9MTIJBsl
         vGIJB3ExsnhhYFjpL0dI0ZhZfczvtkN76QBAZdBuYSbt3X7nOlgNa3RiHun/oHvRl726
         tkDuRqdkvBvSQj8XNHExXTOs5I6cl9UMovboUhOxa7zBPqsNu1i48EYu0Wjs6HE/08RX
         mrVFbRjwbwCj8j/cXE2yeTO3/Tg0Sx/2VcYj1+GKrIGeI3WMo/ECdgtNv1pZZ8/roOlx
         j8GHy+2qomUnt4P+DK4SQfqJi0Get4XCRKhGnHcEZTK8xMud3O8xaMkfKKXDd+FYYkED
         +PYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u+Vmb9YnuWbH8YbdtJhwsXcBDxFqX20uSYLJBhjPhc8=;
        b=VGZPxSldJsS2ddVb9SK7tVBCGhDSXOpKBY3mylvTNd4ugTGncP/Xr9FKfANKCnJGZD
         wnopXjZl9b3gknlYpKn+A9pcBZexXqMJoTo9QSVlcMBvxC47hDL4eqm5StAdZf84sLbq
         VQKrUrIhLJ9yi18dUbmZau+cMXOyJxRVl7G2cLik4JSCFVyeHAgMNu+L1ugmnzRgf1J4
         q/6gVeO2vCsQGQBvT9xem9/eLE9rzLYONQ3jGK5+lO00PZ/xs/Uj5+myGezGwbDvlINq
         SNgDkIs+MlnGpI3ViS27ZCnURDvVAh80x2/6hyaJj7HucuoBwOeeibSDw+LWrtT/cu9l
         nFtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329VXoE2HcmaWxYzYuolm4GH8h9Zi7OVxciiB5MqoExCDp+h+ay
	SBt038R91d9HIUVSq7Fs2Yc=
X-Google-Smtp-Source: ABdhPJypBqcVG7ZxlX3ICnYnvduTsn0idT/Jg7ax31PguYq+HifHpEBAGHpf6ug4p1/Z+sXtD8mf+w==
X-Received: by 2002:a05:6e02:bf1:: with SMTP id d17mr12977815ilu.261.1596373950017;
        Sun, 02 Aug 2020 06:12:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:84d6:: with SMTP id z22ls776145ior.4.gmail; Sun, 02 Aug
 2020 06:12:29 -0700 (PDT)
X-Received: by 2002:a5d:8143:: with SMTP id f3mr12291650ioo.157.1596373949723;
        Sun, 02 Aug 2020 06:12:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596373949; cv=none;
        d=google.com; s=arc-20160816;
        b=03OC3Eag0Oe9sHUff9g/AVz1SOZrRg4l/uNcTTOUkwo/16Xva/yYLIp5knhlG4Icm4
         Tbe7qR5RB6OO4vDBtgHTDIRLSU23t3Abpc5yK3hFLuxcKzNT/9uX1ir4jZHEjL8gISXm
         SWOgjgfkb2qbD6U9yXp6OWw4nmEhJ6BGNwNQOtM1OwK4RuMy556wYJwFYEHM8tst5Y8n
         /k/kQsTQVF4C6qcQwh1L44KJN/wuXjzrzJrZV3aYKeoO6KbpVkd2ueC4JMI+4TwUH+tz
         cbRVHYAYubFIEZJp8+Gjz0MqRd0Ts7Xx0iKRc2gX6c5be+Eei9peqh/tm48DNptsGyCb
         a5Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=9w0kJbe8f9itZ+NJYpjpkA2AxrQUehoAcnCb+6D1oUc=;
        b=FHh622v1sf6bErOo1IgPNFJk9QgI/BCRQC5X6SSGSaAmizmIVo2ccKYXxOdaiqNxr4
         WjP6k03qLiwwiedLuTxAbgAH7gqnYJngGz/RFpAPxwGfaVfD4pHRFlqQvOUfM9PY5FE/
         svLNOTUkuHeIs6CxYdSqa1M+szTv6bHdUGcRIIyTQusg5Jese6TjGSz+kePWJqNjRxeJ
         IbjXk3Pe3MneJXS6+OqerLTFEsc5J0+Xh86sc70ve+i7zi9FrrdrptCGd1GMx5ULbkAm
         zGYA0gkHZIpE3xU//OWt+lgaPJ+s7WytIQUjdtzyOPXDfhvYHnCOmuktahU/HsAHPdCS
         1UXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=pLZ9eajS;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id z6si779279ioj.0.2020.08.02.06.12.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2020 06:12:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4BKLyw2vsLz9sSG;
	Sun,  2 Aug 2020 23:12:24 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Oliver O'Halloran <oohall@gmail.com>
Cc: linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 15/16] powerpc/powernv/sriov: Make single PE mode a per-BAR setting
In-Reply-To: <20200801061823.GA1203340@ubuntu-n2-xlarge-x86>
References: <20200722065715.1432738-1-oohall@gmail.com> <20200722065715.1432738-15-oohall@gmail.com> <20200801061823.GA1203340@ubuntu-n2-xlarge-x86>
Date: Sun, 02 Aug 2020 23:12:23 +1000
Message-ID: <87r1sp19ag.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=pLZ9eajS;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> On Wed, Jul 22, 2020 at 04:57:14PM +1000, Oliver O'Halloran wrote:
>> Using single PE BARs to map an SR-IOV BAR is really a choice about what
>> strategy to use when mapping a BAR. It doesn't make much sense for this to
>> be a global setting since a device might have one large BAR which needs to
>> be mapped with single PE windows and another smaller BAR that can be mapped
>> with a regular segmented window. Make the segmented vs single decision a
>> per-BAR setting and clean up the logic that decides which mode to use.
>> 
>> Signed-off-by: Oliver O'Halloran <oohall@gmail.com>
>> ---
>> v2: Dropped unused total_vfs variables in pnv_pci_ioda_fixup_iov_resources()
>>     Dropped bar_no from pnv_pci_iov_resource_alignment()
>>     Minor re-wording of comments.
>> ---
>>  arch/powerpc/platforms/powernv/pci-sriov.c | 131 ++++++++++-----------
>>  arch/powerpc/platforms/powernv/pci.h       |  11 +-
>>  2 files changed, 73 insertions(+), 69 deletions(-)
>> 
>> diff --git a/arch/powerpc/platforms/powernv/pci-sriov.c b/arch/powerpc/platforms/powernv/pci-sriov.c
>> index ce8ad6851d73..76215d01405b 100644
>> --- a/arch/powerpc/platforms/powernv/pci-sriov.c
>> +++ b/arch/powerpc/platforms/powernv/pci-sriov.c
>> @@ -260,42 +256,40 @@ void pnv_pci_ioda_fixup_iov(struct pci_dev *pdev)
>>  resource_size_t pnv_pci_iov_resource_alignment(struct pci_dev *pdev,
>>  						      int resno)
>>  {
>> -	struct pnv_phb *phb = pci_bus_to_pnvhb(pdev->bus);
>>  	struct pnv_iov_data *iov = pnv_iov_get(pdev);
>>  	resource_size_t align;
>>  
>> +	/*
>> +	 * iov can be null if we have an SR-IOV device with IOV BAR that can't
>> +	 * be placed in the m64 space (i.e. The BAR is 32bit or non-prefetch).
>> +	 * In that case we don't allow VFs to be enabled since one of their
>> +	 * BARs would not be placed in the correct PE.
>> +	 */
>> +	if (!iov)
>> +		return align;
>> +	if (!iov->vfs_expanded)
>> +		return align;
>> +
>> +	align = pci_iov_resource_size(pdev, resno);

That's, oof.

> I am not sure if it has been reported yet but clang points out that
> align is initialized after its use:
>
> arch/powerpc/platforms/powernv/pci-sriov.c:267:10: warning: variable 'align' is uninitialized when used here [-Wuninitialized]
>                 return align;
>                        ^~~~~
> arch/powerpc/platforms/powernv/pci-sriov.c:258:23: note: initialize the variable 'align' to silence this warning
>         resource_size_t align;
>                              ^
>                               = 0
> 1 warning generated.

But I can't get gcc to warn about it?

It produces some code, so it's not like the whole function has been
elided or something. I'm confused.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1sp19ag.fsf%40mpe.ellerman.id.au.
