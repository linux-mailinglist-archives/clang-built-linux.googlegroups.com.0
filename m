Return-Path: <clang-built-linux+bncBDZMNZPOQUERBHVV5GAAMGQESPLQAQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4326630D4AC
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 09:11:12 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id a12sf16343390qvo.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 00:11:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612339871; cv=pass;
        d=google.com; s=arc-20160816;
        b=Of3tN6Dow/JLUPUn+Rg6U/gQf5pGvF1gHig+wMhcAPgGn9EXFtKvgb7Ge6Lcw0Kqqv
         qFIMC4LFUi26FjDIhNEEa+SH5v5mwZVGVYX+pO79jYvsbzHQSh3JKzs7sTWGA1+rqKZW
         SrqNJrlPaLZb7DThGhi6a2wbzi8yy79Y8clytmsLOy/hKJ9J3M9/nrmqGQ7aPPTBJG5C
         a6l4NwkZ4Wdo6UHd0TwB4tuy6JGLJZ+qmMpXX6B2gzrDitpAhQ0y9RmUlqV8bc7m5BWh
         WaxSdUHZy+3qVYCnjtT95fwXe5obA4GArQG4+NITNK093gUJr047vVY2LX2rIb9QcJaf
         XOKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=pGz9nuVi/faeqrt7EIiq8oHjWgKCSpQjbViM7B7suGI=;
        b=StoXH7OIuqtfyd0H0higvwtdFsMbFD0OBZVEGDs+MMf/4l7kitdc/wo0d/dTRaAxO+
         360iJex82SYDoS6hDUn5kIjg8oTghdYR+40J/X06whponBchtbJSP3EN7OaTaSdDIbtW
         G/j5NuiYAuwgtwJIgxBDJdT/bhVuX0/8/1QAguFB3qU+qu3gcTYfU/daWi1uRARW7iEq
         lpi5bSTGNQvm0/GJZ558gTn0kJGH0UVmSDWridAoGIwGryBsZME+wL1GOPVMcu2f+BJq
         qGh1I85wKVjFWlVlUmJvUBU8X22hTP29wJ0ojRXGLh0QGylfCig4gWWnkBCfqNpa7rNb
         DRpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=I2HUlhQh;
       spf=pass (google.com: domain of jthierry@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pGz9nuVi/faeqrt7EIiq8oHjWgKCSpQjbViM7B7suGI=;
        b=ZL1/Ybghyy399nPTNh+0+rBfrJXYqAZa2vse0vVftCY6NqUR9Kk4cw+fNeAN6dbDhW
         GDRGJNDKDAFHA0BSk9hA3u+Heda42IaPWwb8sNfCgIGgtskpIChPc/Fsbo3isZnUK3YG
         NjeF2aOzQa+VGfnoQts8Zf8X6yOEuQyYD4qIXIKo+sD1r6tDfPSlxJnrMl+ZuUrrdu2/
         2xEZRU+XUIXeMs80+Jt+0kGp8HFAjzoRTsYCySuAI2zza5ujoLghFUb4qv+rkvyhDRYE
         pyvDDWZ+ZJMj3Dwbfnoox7zcy72hPMzPUXZI3sGdtqcTfMT8iYVUg28LQ8uyF+dS4fLm
         wiSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pGz9nuVi/faeqrt7EIiq8oHjWgKCSpQjbViM7B7suGI=;
        b=AtnDjV6H8fqg3S3xZ9Sq2Zd+MfuJ2hJfbMphz2wu7zs88S5NEnu97hquSgIztsS2BO
         3+8FvR0J7CMTZCO8RQ4RJQqzrU5JYmB+cfRj2SXLpVUwCRZwsAGlxDN7k/MY8xuq1Clc
         kpLyEumV4l17HFv+Bm57p9ZWZ3ZP58YUV8Hhv3FHsPxM7VBcud8kT+daFfgHSFXiXhWm
         I+3Hken+or2XBy2oXZngYKxOsuHoZjR63PbGA9j58xdlVAlSy2b2ELc1Lh9Wis/lucCI
         aqhr6tZs3ZetSdoG4v4XDHRo+Y1CUyCoRl7xHpSyVuk1a+vFunrUSerJxCALHGp7c7HX
         8PcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YftKSgdsKmlDAqptpMB0aFKlJRPDu7BemZkXpSUNxT8HNIMUe
	+pbmJVzjSW3tuSUvFbC9xy8=
X-Google-Smtp-Source: ABdhPJwTNJIn/9znPwegEHozNhInfSiUNd2xRgmJGyMm/7RYyGnbj4iIyy/eqlWe5rtUS6hIkwE3Aw==
X-Received: by 2002:ac8:7cb7:: with SMTP id z23mr1542044qtv.86.1612339870869;
        Wed, 03 Feb 2021 00:11:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e6eb:: with SMTP id m11ls265757qvn.3.gmail; Wed, 03 Feb
 2021 00:11:10 -0800 (PST)
X-Received: by 2002:a0c:ea22:: with SMTP id t2mr1770445qvp.49.1612339870516;
        Wed, 03 Feb 2021 00:11:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612339870; cv=none;
        d=google.com; s=arc-20160816;
        b=ETdcZBo4QxYaLHBw0CirVrFCL/+U4BHzbPTrStsN+07FZCJyCMvAxdS7tOlAYzfqde
         S8NmdfNk3ZPomDR8ILVFkAhXxZg1708n02xtD3vMilYDq2gcbRP9FWcmZHQshS5PCiDW
         xQDAqmtteD8zhg5h0aR5FKhB54nw9Wy/HYntu4JF/QtgekCdh+Pp4e2HW1WhEvhkHlTO
         alw8wiK5W2mFqiachWrSnI4DN0oOS5XAWoU1x5GhOGNsZXbq7Fzt3FuP4FlwYx31OAVj
         aILRjQdzcVnd79V8CBFdD3rLFjdIBz8Xh8DTK98eZ1U/BRKUM/mVE5mmwCjccSFN0peP
         ohHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=7Huq6tfU+kDDL1exMPNWAbCb858jufvEInD0eW8A0Yo=;
        b=TlJ0kG7ooCzseb9ZcDlvYP0NBFKwXD7LKkwgwBoo92VRjdCnWrx7Y+VrCfqmo0Hxme
         Gg6z2KvN42Nndpg2HFDv2h6KpbCh7I/NAc2b0MIJ796jGpFJx8KfH7aUi+XgQr899ZYq
         7bul77qYmcuq5sTjVrccL8YofRuHSOKeewBfHr4GjdD5LTZsVE8tBtf8h8BKIk7HCECg
         oQktZ6xOjR1oh/f86/OxZSgSLfy5VlGfrMVfOOTrGl3oRkxNQQazqoklPMZUdKfVddLW
         yRXiIEwbgqocYbKF1IRnlJxJ/78yOkzjw3ns/BNECYBsVay6VfmckXcP8y07LxzLn+PV
         PL8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=I2HUlhQh;
       spf=pass (google.com: domain of jthierry@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id a26si87651qkl.1.2021.02.03.00.11.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 00:11:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jthierry@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-442-I6l-G59aNea2QPIgXW8uvQ-1; Wed, 03 Feb 2021 03:11:06 -0500
X-MC-Unique: I6l-G59aNea2QPIgXW8uvQ-1
Received: by mail-wr1-f70.google.com with SMTP id z9so13977179wro.11
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 00:11:06 -0800 (PST)
X-Received: by 2002:a1c:dcd7:: with SMTP id t206mr1572565wmg.108.1612339865391;
        Wed, 03 Feb 2021 00:11:05 -0800 (PST)
X-Received: by 2002:a1c:dcd7:: with SMTP id t206mr1572547wmg.108.1612339865171;
        Wed, 03 Feb 2021 00:11:05 -0800 (PST)
Received: from ?IPv6:2a01:cb14:499:3d00:cd47:f651:9d80:157a? ([2a01:cb14:499:3d00:cd47:f651:9d80:157a])
        by smtp.gmail.com with ESMTPSA id y63sm1590188wmd.21.2021.02.03.00.11.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 00:11:04 -0800 (PST)
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Ard Biesheuvel <ardb@kernel.org>,
 Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kees Cook <keescook@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-efi <linux-efi@vger.kernel.org>, linux-hardening@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Peter Zijlstra
 <peterz@infradead.org>, raphael.gault@arm.com, Will Deacon
 <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>,
 Bill Wendling <morbo@google.com>, swine@google.com, yonghyun@google.com
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
 <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <e3db542d-c1ff-ffea-60c0-f8dcc0dfb054@redhat.com>
Date: Wed, 3 Feb 2021 09:11:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jthierry@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=I2HUlhQh;
       spf=pass (google.com: domain of jthierry@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
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



On 2/3/21 12:01 AM, Nick Desaulniers wrote:
> On Tue, Feb 2, 2021 at 12:57 AM Julien Thierry <jthierry@redhat.com> wrote:
>>
>>
>>
>> On 2/2/21 12:17 AM, Nick Desaulniers wrote:
>>> On Mon, Feb 1, 2021 at 1:44 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>>>>
>>>> On Fri, Jan 29, 2021 at 10:10:01AM -0800, Nick Desaulniers wrote:
>>>>> On Wed, Jan 27, 2021 at 3:27 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>>>>>>
>>>>>> On Wed, Jan 27, 2021 at 02:15:57PM -0800, Nick Desaulniers wrote:
>>>>>>>> From: Raphael Gault <raphael.gault@arm.com>
>>>>>>>>
>>>>>>>> This plugins comes into play before the final 2 RTL passes of GCC and
>>>>>>>> detects switch-tables that are to be outputed in the ELF and writes
>>>>>>>> information in an ".discard.switch_table_info" section which will be
>>>>>>>> used by objtool.
>>>>>>>>
>>>>>>>> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
>>>>>>>> [J.T.: Change section name to store switch table information,
>>>>>>>>          Make plugin Kconfig be selected rather than opt-in by user,
>>>>>>>>          Add a relocation in the switch_table_info that points to
>>>>>>>>          the jump operation itself]
>>>>>>>> Signed-off-by: Julien Thierry <jthierry@redhat.com>
>>>>>>>
>>>>>>> Rather than tightly couple this feature to a particular toolchain via
>>>>>>> plugin, it might be nice to consider what features could be spec'ed out
>>>>>>> for toolchains to implement (perhaps via a -f flag).
>>>>>>
>>>>>> The problem is being able to detect switch statement jump table vectors.
>>>>>>
>>>>>> For a given indirect branch (due to a switch statement), what are all
>>>>>> the corresponding jump targets?
>>>>>>
>>>>>> We would need the compiler to annotate that information somehow.
>>>>>
>>>>> Makes sense, the compiler should have this information.  How is this
>>>>> problem solved on x86?
>>>>
>>>> Thus far we've been able to successfully reverse engineer it on x86,
>>>> though it hasn't been easy.
>>>>
>>>> There were some particulars for arm64 which made doing so impossible.
>>>> (I don't remember the details.)
>>
>> The main issue is that the tables for arm64 have more indirection than x86.
> 
> I wonder if PAC or BTI also make this slightly more complex?  PAC at
> least has implications for unwinders, IIUC.
> 
>>
>> On x86, the dispatching jump instruction fetches the target address from
>> a contiguous array of addresses based on a given offset. So the list of
>> potential targets of the jump is neatly organized in a table (and sure,
>> before link time these are just relocation, but still processable).
>>
>> On arm64 (with GCC at least), what is stored in a table is an array of
>> candidate offsets from the jump instruction. And because arm64 is
>> limited to 32bit instructions, the encoding often requires multiple
>> instructions to compute the target address:
>>
>> ldr<*>  x_offset, [x_offsets_table, x_index, ...]  // load offset
>> adr     x_dest_base, <addr>          // load target branch for offset 0
>> add     x_dest, x_target_base, x_offset, ...  // compute final address
>> br      x_dest        // jump
>>
>> Where this gets trickier is that (with GCC) the offsets stored in the
>> table might or might not be signed constants (and this can be seen in
>> GCC intermediate representations, but I do not believe this information
>> is output in the final object file). And on top of that, GCC might
>> decide to use offsets that are seen as unsigned during intermediate
>> representation as signed offset by sign extending them in the add
>> instruction.
>>
>> So, to handle this we'd have to track the different operation done with
>> the offset, from the load to the final jump, decoding the instructions
>> and deducing the potential target instructions from the table of offsets.
>>
>> But that is error prone as we don't really know how many instructions
>> can be between the ones doing the address computation, and I remember
>> some messy case of a jump table inside a jump table where tracking the
>> instruction touching one or the other offset would need a lot of corner
>> case handling.
>>
>> And this of course is just for GCC, I haven't looked at what it all
>> looks like on Clang's end.
> 
> Sure, but this is what production unwinders do, and they don't require
> compiler plugins, right?  I don't doubt unwinders can be made simpler
> with changes to toolchain output; please work with your compiler
> vendor on making such changes rather than relying on compiler plugins
> to do so.
> 

I think there is a small confusion. The plugin nor the data it generates 
is not to be used by a kernel unwinder. It's here to allow objtool to 
assess whether the code being checked can be unwound (?) reliably (not 
omitting functions). Part of this is checking that a branch/jump in a 
function does not end up in some code that is not related to the 
function without setting up a call frame.

This is about static validation rather than functionality.

>>> I think the details are pertinent to finding a portable solution.  The
>>> commit message of this commit in particular doesn't document such
>>> details, such as why such an approach is necessary or how the data is
>>> laid out for objtool to consume it.
>>>
>>
>> Sorry, I will need to make that clearer. The next patch explains it a
>> bit [1]
>>
>> Basically, for simplicity, the plugin creates a new section containing
> 
> Right, this takes a focus on simplicity, at the cost of alienating a toolchain.
> 
> Ard's point about 3193c0836f20 relating to -fgcse is that when
> presented with tricky cases to unwind, the simplest approach is taken.
> There it was disabling a compiler specific compiler optimization, here
> it's either a compiler specific compiler plugin (or disabling another
> compiler optimization).  The pattern seems to be "Objtool isn't smart
> enough" ... "compiler optimization disabled" or "compiler plugin
> dependency."
> 
>> tables (one per jump table) of references to the jump targets, similar
>> to what x86 has, except that in this case this table isn't actually used
>> by runtime code and is discarded at link time. I only chose this to
>> minimize what needed to be changed in objtool and because the format
>> seemed simple enough.
>>
>> But I'm open on some alternative, whether it's a -fjump-table-info
> 
> Yes, I think we could spec out something like that.  But I would
> appreciate revisiting open questions around stack validation (frame
> pointers), preventing the generation of jump tables to begin with
> (-fno-jump-tables) in place of making objtool more robust, or
> generally the need to depend on compiler plugins.
> 

I'll give it a try at least for the arm64 side.

Thanks,

-- 
Julien Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e3db542d-c1ff-ffea-60c0-f8dcc0dfb054%40redhat.com.
