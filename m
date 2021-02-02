Return-Path: <clang-built-linux+bncBDZMNZPOQUERB6NH4SAAMGQER6GGS3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADA630BA6C
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 09:57:31 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id b4sf1426629pji.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 00:57:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612256250; cv=pass;
        d=google.com; s=arc-20160816;
        b=0fAfZUOI+gO5Yo3YE3TW6mvRibeFa9AuvTcDCEeIvzQ0ah/ILWYN9qoTjUI4rPsx+a
         p9aS89kZRJfjZuN02BKSChhiBTkiOeDNnnZpQhF1PVSs8Nx7Hjm5woEAOAup9I3VfwBz
         Juvbda9ZG2Ghozoy+VSdOpf0hvSW0n6JgaZ9e0o+z7r1IRlwToVHJ4tc3dGU56tv1ejO
         eOrcueXlQzuHL9A0lfQR8J8gahHST7Sk2XlzmWx0li11T3raeTTJPpJTn/KH4TqDbpJK
         j+OwsZ/HHLNmcikbjc6wCOr7f5iEx0XSdgiNDAYA/4RgHZfiGj62H5AxNc4u3bNkOip6
         VauQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=THL0AN8HjZ+vcsnUDmFngbgDnpQgNfdTyRo86veycyk=;
        b=uq2hB8JxYRQlSVqCn/LwXTkHUFY18Cm/P3lVcYgZIz5lxA9CeCz4VZWna3iqIYgdU4
         DJRbQEc2MuuWc3IXS+FqP3B/UylYwV8sYXZwhL42N6qEighkZRAJ5eh1IjfPpndTLqLr
         hfjfbYDuaKbuRZM5iheVCtvSR+YBmHODPSA4qu7n89ZaYlaWHtpPrSlFuBXK3Ks/NuM2
         Z1bvMEJEQzMc4iBczBUe1YTisr3SU/Xw9BYrFY/Zs7AbWs4X/6hWDCy8+c/UcM9wzbEi
         b3V7jbUmslZgU3loTRWdqnlrIZLGlRun2/YsjztFGiEHPwOd3z0CVvwrxQqrtrxJv0+d
         Qhuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dVIFp5z8;
       spf=pass (google.com: domain of jthierry@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=THL0AN8HjZ+vcsnUDmFngbgDnpQgNfdTyRo86veycyk=;
        b=EedPReDqkA7xjrzH0J+O4AHEvvrpHXFD5xOIpzg7HbQQ0YfO2gMDP4SNwYA+WZJiQm
         bh0i5h7kW6PjGfPZLzuWx8hOjrFnR+CoEyPkKXph83TYLrSnK+4bE/y2JAYDdv85W1ls
         SF4el229ILt4CipxwLmsUpfcr1bTH51mj8p8BmMczuype3pN1m9aRT9XeeyjbdRVlM0N
         PoPxJ0A+LU1crBW5qDk6y5sSjXk91Jh0kAbIOrAKaykLvIph2QZnDlSeTDN7BCw2bG0h
         VQQDsrnC5LRwMmLuLWGaE0gwjW2Lalw4/pAOYaJv7mXHjTbZqgAQbzTIX03XNEkFBGH/
         nwww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=THL0AN8HjZ+vcsnUDmFngbgDnpQgNfdTyRo86veycyk=;
        b=ibs6ZLZuOwWOzPKWFRviTX6tsbLmPwLKF/xG3TcYkSaQtrrPCQSL3vqcgz7D/Q90HN
         ySMA6CYkbzGScJCk94ApyQCTH5XxwKDpFqW0cjW4qSsAyJWhakBAouhS6Fub0hgDM6tS
         ZQxUEfy5yDfsBm1MSWzT24MdcMJQj3hENayUkCko9I1fWNLvAa6o8w3VlNdIA5gS7hW5
         Dgvdm8W0bUWF933qbaDv0hP4ye0+akC3xoOIOKBSm2gAI13PevEkZ804UTKyIhoiJ0W5
         WOIEcMcpRb1agXyjdKQc9U0JJRY4Pu8d3Lmz7TjIW818C4rS52U0NP7bks48rM0WoCX4
         R2Pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318XCDYlaGr2DQ9H6MnOrtB+5VZnfGww2WcdLMExs1iTvmHgi+P
	dnLMYSUJQinoFlBkttmrptM=
X-Google-Smtp-Source: ABdhPJxJ1oiq52RHhj63UQfxWgCu100Mr81tmMU+vQR0MQuFJJHk18Y9zhqmPwh2F/eme5xhYXLzpQ==
X-Received: by 2002:a62:e807:0:b029:1cd:405d:f01f with SMTP id c7-20020a62e8070000b02901cd405df01fmr9159764pfi.74.1612256249957;
        Tue, 02 Feb 2021 00:57:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4015:: with SMTP id ie21ls1166053pjb.2.gmail; Tue,
 02 Feb 2021 00:57:29 -0800 (PST)
X-Received: by 2002:a17:90a:4083:: with SMTP id l3mr3265252pjg.109.1612256249220;
        Tue, 02 Feb 2021 00:57:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612256249; cv=none;
        d=google.com; s=arc-20160816;
        b=Vbibj92kBkTAGJD3U3Se+qp0/1tNGm8Y3G9Qt8ByYB1dKhL4FdlERHSu9CWGvDWGZ0
         EQYgocxI9Ci/p3Mh2s66NonbU6CG5KW8abxovzQ6LMXtivq89bk10i74aBdWBvz6vnSx
         3NwhVVLmOyb4nevaXZprf+/ic9cZZCE/QnySOTrJtn2FYtA1d555xpEUq0iBveDzZLzD
         In4pXtjwz0T3q2SqKsfB5t8FC5LQYyRtwachlPJHko1pUz9fxn9PW8u9UN4/WSXs9QTl
         j4rFmk1yNuALLNC2ZCi7f8GsHlTHlYfpjQUMUOx0YvI/kEeI6WwutZxBQZfwzu944TWt
         +TdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Si/dI5lNziAyVoRmOt6q5oX+Pb8j9QNnXS8AF/vdi/A=;
        b=TFgEmbXpQk5QZdoo41KhTsav/yKcMIMrI8SZAf0WEKtMpxhpkZNwFRYjEFNKulh/N2
         HKBAQSsflugqBYHaI+y8MtzFXnYvKRMhlPTWno/nSA5zJ35DIayzkhduYyDPnXDYZOA6
         e5RIeWohUXoekRSuDLyr7ggIznLUEH/s7omnuqWZ/jCVkrLWgOvuNXjXTFI3hPHwG/y1
         tV8ya6z5cB/3ZXgXStt3Loy2RJ+SD6ncXFLI2mCKuRmF3ttct5MV+g6Ry6f1Pg9LL4YA
         NeO4fnKpP2DMOsVE6k8cgaIB+FowX/+iFyqYmDjrQDndLJuLx+HCzwSyHWAce2UTmVEX
         7WSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dVIFp5z8;
       spf=pass (google.com: domain of jthierry@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w2si979909ply.1.2021.02.02.00.57.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 00:57:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jthierry@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-yfx6f8dZM7GqQlRtFHSvlQ-1; Tue, 02 Feb 2021 03:57:23 -0500
X-MC-Unique: yfx6f8dZM7GqQlRtFHSvlQ-1
Received: by mail-wr1-f71.google.com with SMTP id j8so12161642wrx.17
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 00:57:23 -0800 (PST)
X-Received: by 2002:a05:6000:192:: with SMTP id p18mr22178814wrx.69.1612256242134;
        Tue, 02 Feb 2021 00:57:22 -0800 (PST)
X-Received: by 2002:a05:6000:192:: with SMTP id p18mr22178791wrx.69.1612256241890;
        Tue, 02 Feb 2021 00:57:21 -0800 (PST)
Received: from ?IPv6:2a01:cb14:499:3d00:cd47:f651:9d80:157a? ([2a01:cb14:499:3d00:cd47:f651:9d80:157a])
        by smtp.gmail.com with ESMTPSA id i7sm2269412wmq.2.2021.02.02.00.57.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 00:57:21 -0800 (PST)
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
To: Nick Desaulniers <ndesaulniers@google.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Kees Cook
 <keescook@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-efi <linux-efi@vger.kernel.org>, linux-hardening@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Peter Zijlstra
 <peterz@infradead.org>, raphael.gault@arm.com, Will Deacon
 <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>,
 Bill Wendling <morbo@google.com>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
Date: Tue, 2 Feb 2021 09:57:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jthierry@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dVIFp5z8;
       spf=pass (google.com: domain of jthierry@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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



On 2/2/21 12:17 AM, Nick Desaulniers wrote:
> On Mon, Feb 1, 2021 at 1:44 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>>
>> On Fri, Jan 29, 2021 at 10:10:01AM -0800, Nick Desaulniers wrote:
>>> On Wed, Jan 27, 2021 at 3:27 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>>>>
>>>> On Wed, Jan 27, 2021 at 02:15:57PM -0800, Nick Desaulniers wrote:
>>>>>> From: Raphael Gault <raphael.gault@arm.com>
>>>>>>
>>>>>> This plugins comes into play before the final 2 RTL passes of GCC and
>>>>>> detects switch-tables that are to be outputed in the ELF and writes
>>>>>> information in an ".discard.switch_table_info" section which will be
>>>>>> used by objtool.
>>>>>>
>>>>>> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
>>>>>> [J.T.: Change section name to store switch table information,
>>>>>>         Make plugin Kconfig be selected rather than opt-in by user,
>>>>>>         Add a relocation in the switch_table_info that points to
>>>>>>         the jump operation itself]
>>>>>> Signed-off-by: Julien Thierry <jthierry@redhat.com>
>>>>>
>>>>> Rather than tightly couple this feature to a particular toolchain via
>>>>> plugin, it might be nice to consider what features could be spec'ed out
>>>>> for toolchains to implement (perhaps via a -f flag).
>>>>
>>>> The problem is being able to detect switch statement jump table vectors.
>>>>
>>>> For a given indirect branch (due to a switch statement), what are all
>>>> the corresponding jump targets?
>>>>
>>>> We would need the compiler to annotate that information somehow.
>>>
>>> Makes sense, the compiler should have this information.  How is this
>>> problem solved on x86?
>>
>> Thus far we've been able to successfully reverse engineer it on x86,
>> though it hasn't been easy.
>>
>> There were some particulars for arm64 which made doing so impossible.
>> (I don't remember the details.)

The main issue is that the tables for arm64 have more indirection than x86.

On x86, the dispatching jump instruction fetches the target address from 
a contiguous array of addresses based on a given offset. So the list of 
potential targets of the jump is neatly organized in a table (and sure, 
before link time these are just relocation, but still processable).

On arm64 (with GCC at least), what is stored in a table is an array of 
candidate offsets from the jump instruction. And because arm64 is 
limited to 32bit instructions, the encoding often requires multiple 
instructions to compute the target address:

ldr<*>  x_offset, [x_offsets_table, x_index, ...]  // load offset
adr     x_dest_base, <addr>          // load target branch for offset 0
add     x_dest, x_target_base, x_offset, ...  // compute final address
br      x_dest        // jump

Where this gets trickier is that (with GCC) the offsets stored in the 
table might or might not be signed constants (and this can be seen in 
GCC intermediate representations, but I do not believe this information 
is output in the final object file). And on top of that, GCC might 
decide to use offsets that are seen as unsigned during intermediate 
representation as signed offset by sign extending them in the add 
instruction.

So, to handle this we'd have to track the different operation done with 
the offset, from the load to the final jump, decoding the instructions
and deducing the potential target instructions from the table of offsets.

But that is error prone as we don't really know how many instructions 
can be between the ones doing the address computation, and I remember 
some messy case of a jump table inside a jump table where tracking the 
instruction touching one or the other offset would need a lot of corner 
case handling.

And this of course is just for GCC, I haven't looked at what it all 
looks like on Clang's end.


> 
> I think the details are pertinent to finding a portable solution.  The
> commit message of this commit in particular doesn't document such
> details, such as why such an approach is necessary or how the data is
> laid out for objtool to consume it.
> 

Sorry, I will need to make that clearer. The next patch explains it a 
bit [1]

Basically, for simplicity, the plugin creates a new section containing 
tables (one per jump table) of references to the jump targets, similar 
to what x86 has, except that in this case this table isn't actually used 
by runtime code and is discarded at link time. I only chose this to 
minimize what needed to be changed in objtool and because the format 
seemed simple enough.

But I'm open on some alternative, whether it's a -fjump-table-info 
option added to compilers with a different format to do the links. The 
important requirement is to be able to know all the candidate targets 
for a "br <reg>" instruction.

[1] https://lkml.org/lkml/2021/1/20/910

Thanks,

-- 
Julien Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/671f1aa9-975e-1bda-6768-259adbdc24c8%40redhat.com.
