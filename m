Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH6D72CQMGQERFNRTVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id E38BA39FCF3
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 18:58:08 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 9-20020a6217090000b02902ed4caf9377sf3958721pfx.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 09:58:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623171487; cv=pass;
        d=google.com; s=arc-20160816;
        b=nhFdrxGJMWMMyQicC1//E9I8QczVPthjUviTIzOQW0RG+JI5UMw/6FaLjQXeB+tV3z
         RT3nBpuVlF+zNtMG49mIl0zAPgOGHRa7Ov6923808ziL22BvUut52870BGiaYuljXiaL
         pMShbFEgCGHyxv5WOBEUotQZymbbx5Bojs4JhPuWI3XDnwXK35VcLB1YRssH7TKUGVXi
         SCksY+X4JzFb21GoY+fNznx7JIgHWQByQVqqHhMXekouH478gP/0PPOZGMjMwUeqiz4V
         CyKMoP3FkyKTYfZyBnxcjWk+XhnW0bZ29c7VV3bIO37D7Ei94kHPTQTtjkWaWCxDI/Ji
         fklw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vs250CCqSravqOZJ85cOlrHXpaCHpubMPOuG4+J3grc=;
        b=U9QjtWy9um2gR2INkPNxUqxQURkXx5JHW6v7MmmvP1u6kO5EBnjNBQ44f5+puXH82S
         iDj+gKOmRe/QK5t/yblQQm3qjPWAaLP1/506/Vx8CLRiMg8Mtx5Z2WjqkXJMpy1egmaZ
         DjmdxJzLJidP1MdOyUMVxmjiLekQB+ApARhN9HqemWF1g5FvilLTIqZmvyw2rbZOUJ3W
         acw4Bgr0nD8PnN8KCLJge6VGDZdIU4lYEzTR/JqbMrpsouKpu0a4/V7yUjr3hzygZ9kw
         4fFa5lloz/Ra9zRsZL7TXxd1vWQZxzaZzdLrr33Db89UuEwNe3VituK54ViVowroK0Zg
         cCTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tlP0ZO+W;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vs250CCqSravqOZJ85cOlrHXpaCHpubMPOuG4+J3grc=;
        b=LEMANvv0xisETxUFfxd4lddi0UepYuNWEYCryQY/L/ygL0fhKEXWLoh3pvxFu6LM4M
         JzN9MBWR7QrYi3YCux7f9VVU2jrH3kRnVMf1pMP3ynd23sxHDp2MiPskwvjNmoSh+14b
         KMgN6R6gZ/tYid6hexNZqWTnRicZ8jaR7sjY/eyEM+8oGZdUxP6mLAAx2upg7n1GoAzu
         xecsg9JhihSDc6vbPO6kyJJo+yKlsuTvk9H8V8GGpIoBNhoLLIENx2dGFMPhU29pS69V
         Ta/ImX13YbAi7wnEMFW4bhyCF9UMbGtRhyKfFb2EmGx3Syf/1D4QQ8+7hQmLuIrBm58v
         sDNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vs250CCqSravqOZJ85cOlrHXpaCHpubMPOuG4+J3grc=;
        b=sRoVRuzT5wiy64se8ffztY8qJzbQB4HSSPoer8lVGgTQ6T8qSPLRkbxeyZjYUlZR8P
         hDujCCQ7nqwuk4FryO/fvJv+OhC9nzJ574QENjxfF+/wrj6kVg7/L3MN50ZuMPKt0Gst
         xBobSeoO1HwJqPXz/eTwP4/N4bDkw+CGvDPh4rxtOeyqnUQXkdCgFkMxnifN6KlT+xsX
         uBfEmGps58Yml4Hg0I2brDA7XxHa9nowKmb5NQclFi6KuUOctxpGHPi+PUPrGRYzLfgu
         jr/q2HbzDVotyFOB6OcuAEfNiAsWdrhziNQ5ivK8hYT2I12JiXUqvTcqcFNhCwuSBOqZ
         +jyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BhRWe2vgPHqo/2DQQ734QEGEaaI+Uk5HnkYC4r9sJiRd9Qwyv
	6Roelft9hWIkqtIGlPwS+5M=
X-Google-Smtp-Source: ABdhPJwHAU0iw//ZhamwcT6Uz0oeIcqhv3kQ+m+XBQEw1QU8SL1GhcaAUt5pYk4dfg0lffNExT9RUA==
X-Received: by 2002:a17:90a:ce18:: with SMTP id f24mr5848614pju.225.1623171487461;
        Tue, 08 Jun 2021 09:58:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1dd4:: with SMTP id d203ls8932758pfd.2.gmail; Tue, 08
 Jun 2021 09:58:07 -0700 (PDT)
X-Received: by 2002:a65:670a:: with SMTP id u10mr21227170pgf.6.1623171486912;
        Tue, 08 Jun 2021 09:58:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623171486; cv=none;
        d=google.com; s=arc-20160816;
        b=RWZRPMuV45tu2noRfF55QdLdrIvUHFqwqB/x6QKBcTG/HdD+FyPfgSEz6RNj0Qi1Q7
         0f29Z4tY1AEPd2dipuxfVceRYoAk5kW+i0Z8NcjvkEpS7odiynX01xwDvrG0tcZpvTxT
         EmnO074QSBpxz/Vbi1GkiF0qqeedTuyfXl7OjGWvOL3fW0V4VbgKzGg5+jovl41t0vtr
         cVUw2pbwrF7vfnIhb+o6dd8j50IYNVYxy+NVvLXja/ZTBeHs7akLq1UnLDBKae7KI2ko
         oQQ2HsRJmK4B+DDpw1maWsKCUZ09fNQ+MWe4MAPIbsnWqGJm7hPqvXyn+LAuAvVNImta
         E94w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tZyAXcbOeI9BqKO8lliQxBrkDPhXYa1Xzquem3zmXPI=;
        b=sMWkU/L/ipiYbiejfFrUH+3II4ciAgPyuOwCHGnsFXZYY7jOJCHT22qaclxkwJSg9J
         rbezqD9mmxp3BsylYKHp8/tjBIl3wcghVvAEXYi6wFVV36JKBxYX61Snc88oSrn9MI7r
         tyBK1keKmsGxOuYmnhXwaRyidq3+RtpE9U2vXoRRQ0YX4LBhhlHXhzHJL0hfDkyLDRcv
         kSHzeKmpa6aed2Cenpc2lG2YmFxv6PlI9iVP1wytjttIe4Pp3JhvczS1wvbhgS6V+vzK
         GlzZZX76Il6izlUJCQeYK7mROWRkUBfqwnCvRuRHLj9dcE17FT9ozHrARQacoQpQKFLi
         auXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tlP0ZO+W;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m14si42552pjq.1.2021.06.08.09.58.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 09:58:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C85316128A;
	Tue,  8 Jun 2021 16:58:05 +0000 (UTC)
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Nick Desaulniers <ndesaulniers@google.com>,
 Peter Zijlstra <peterz@infradead.org>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
 Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
 lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com,
 =?UTF-8?Q?Rados=c5=82aw_Biernacki?= <rad@semihalf.com>,
 upstream@semihalf.com,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
Date: Tue, 8 Jun 2021 09:58:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tlP0ZO+W;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/7/2021 1:54 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Mon, Jun 7, 2021 at 2:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
>>
> 
> Thanks, the below diff resolves the linker error reported in
> https://github.com/ClangBuiltLinux/linux/issues/1388
> 
> Both readelf implementations seem happy with the results, too.
> 
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> Nathan,
> Can you please test the below diff and see if that resolves your boot
> issue reported in:
> https://github.com/ClangBuiltLinux/linux/issues/1384

Unfortunately, it does not appear to resolve that issue.

$ git log -2 --decorate=no --oneline
eea6a9d6d277 Peter's fix
614124bea77e Linux 5.13-rc5

$ strings /mnt/c/Users/natec/Linux/kernel-investigation | grep microsoft
5.13.0-rc5-microsoft-standard-WSL2-00001-geea6a9d6d277 
(nathan@archlinux-ax161) #3 SMP Tue Jun 8 09:46:19 MST 2021

My VM still never makes it to userspace.

>> ---
>>   tools/objtool/elf.c | 25 ++++++++++++++++++++++++-
>>   1 file changed, 24 insertions(+), 1 deletion(-)
>>
>> diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
>> index 743c2e9d0f56..41bca1d13d8e 100644
>> --- a/tools/objtool/elf.c
>> +++ b/tools/objtool/elf.c
>> @@ -717,7 +717,7 @@ static int elf_add_string(struct elf *elf, struct section *strtab, char *str)
>>
>>   struct symbol *elf_create_undef_symbol(struct elf *elf, const char *name)
>>   {
>> -       struct section *symtab;
>> +       struct section *symtab, *symtab_shndx;
>>          struct symbol *sym;
>>          Elf_Data *data;
>>          Elf_Scn *s;
>> @@ -769,6 +769,29 @@ struct symbol *elf_create_undef_symbol(struct elf *elf, const char *name)
>>          symtab->len += data->d_size;
>>          symtab->changed = true;
>>
>> +       symtab_shndx = find_section_by_name(elf, ".symtab_shndx");
>> +       if (symtab_shndx) {
>> +               s = elf_getscn(elf->elf, symtab_shndx->idx);
>> +               if (!s) {
>> +                       WARN_ELF("elf_getscn");
>> +                       return NULL;
>> +               }
>> +
>> +               data = elf_newdata(s);
>> +               if (!data) {
>> +                       WARN_ELF("elf_newdata");
>> +                       return NULL;
>> +               }
>> +
>> +               data->d_buf = &sym->sym.st_size; /* conveniently 0 */
>> +               data->d_size = sizeof(Elf32_Word);
>> +               data->d_align = 4;
>> +               data->d_type = ELF_T_WORD;
>> +
>> +               symtab_shndx->len += 4;
>> +               symtab_shndx->changed = true;
>> +       }
>> +
>>          sym->sec = find_section_by_index(elf, 0);
>>
>>          elf_add_symbol(elf, sym);
> 
> 
> The only thing that's still different is that the `file` command still
> prints "no section header."
> 
> $ find . -name \*.lto.o | xargs file | rev | cut -d , -f 1 | rev |
> sort | uniq -c
>        1  no section header
>     8377  not stripped
>        1  too many section headers (33683)
>        1  too many section headers (50758)
> $ file --version
> file-5.39
> 
> That's drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o, fs/xfs/xfs.lto.o,
> drivers/gpu/drm/i915/i915.lto.o, respectively.  I'm not sure that's a
> problem, yet, and whether 9bc0bb50727c8ac69fbb33fb937431cf3518ff37 is
> even related yet; those might just be huge drivers and figured it was
> reporting somewhere in case it ever comes up again.  CONFIG_LTO
> implies -ffunction-sections -fdata-sections, and
> CONFIG_LD_DEAD_CODE_DATA_ELIMINATION explicitly sets those, too.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e351ac97-4038-61b5-b373-63698a787fc1%40kernel.org.
