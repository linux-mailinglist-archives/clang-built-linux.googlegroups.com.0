Return-Path: <clang-built-linux+bncBCRKNY4WZECBBLWI7LZAKGQEAUSZWJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC1A177E85
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 19:38:40 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id q1sf2207585oij.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 10:38:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583260719; cv=pass;
        d=google.com; s=arc-20160816;
        b=rzqCuOf5F1Hl35kKQEILS8Em/VNBeY0HptuYXjYALv5UNK/4eXFemAZVNAfp4ibKRN
         xCZxIkstv80Mu31/hT45aynFw0sWoqS73YySq1aNVNrVm+0k+tRpOEX6G2x6vdxsUpTW
         B34qNzCR5sY88Mhm1P1AL/itOjdF0bD+rVRrudfPXzH20tmswI179x4g88jnGH56naZz
         RvVwTVuXo9UhIpdP6OtWFF66H1e19rLnBknfxSAAyF23KBGV9/Ka2zPH3AaSiN7h4/Om
         1soLMxczY66MwCKyuxFOxiRgXNy1FovikewBKD+lTVhaQ3LN6LPDRbY14fIgcF2RFkfl
         H2zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=5jb2GSYqzSfKKQ/ZZofcFdvSvqW9sQXRCYEb7929SKc=;
        b=I+oqaYIFPWzUY4rEJeu71Q8knx/D7uoXNgyiUoCDwYCLKzFY8JAkpekSLWSv6oY0nT
         CxFDPoIaxeAlpVgqb+WmxUCzcmsOkbzN06jmz6mvfEYwpd49N18wtG5BEyPPSaAV8mJU
         qBtRFTlbARonr+iC6R4SwtjbAbavBhlDDqkcaaVyZWh9uIqMXnSTFrEb7b2OC3L4/spG
         GIm/t7CdqsprQyqWbEjKXpLgL/JT9AKtjS3Ksh8qk+mxViF+gX/jlqUJN/D6mRA9L5iO
         wkg3sprdgwF4+Tw3n7dldVLWIv8iD706r1kBgPdSpi3bbfDDZbLSScTbMwHC5iwFKfUA
         7vtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b="E0P/BeRM";
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5jb2GSYqzSfKKQ/ZZofcFdvSvqW9sQXRCYEb7929SKc=;
        b=OSo9JGMXVlDdJCkPLUZaFcdDtERkbMzKtHZe8/ZrVVAJ7Vvv9eI3h7vDgQ0VFWxDUt
         aq/uSB36z+GQhgw7IGsfQPzxjapL/WpHFmenYx5UOHwDN+/j9K9T1MbIfXqbqn6TvsbT
         W7GEcBYxvSRURZC9B+lZfr+15TCMlB9EQziyarxqmHAa0weJ3HmRbqpqYkKiyH5sij/G
         01B+c+bMG5c7c0rhPZGb7O4wyr0kwyb2F+oVIMYxR5T2HvMuGbk6gbiC4Y8cH0M1qz6E
         B13zGEKo1CorrIq//Q9pcX0t5LJrqeIWViFOpJR6MbM+6LytAm011i3aOjiG5OVyreNC
         rHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5jb2GSYqzSfKKQ/ZZofcFdvSvqW9sQXRCYEb7929SKc=;
        b=Y0BkC93abC9iEfTT8hjfxb2C3wGBe7RnXc0Q/bmTic/5vv/h+mQKvy9kwBBOD6QgSL
         nAuFq6eokssrr9gWv8d8shsacirUtwvBRMI3BxeheD9fhdFuzAyLBNyw1uqbPUZ6sVVq
         Oilq/ZMyQVxo7QNejjVPViei93iQsJ+wgtBgZXYmtS9NmZoS2xYOQFpCeIHyZBo53OSa
         Xo0yY+metjV/TbokMEbX1ZncZ5rNSBpwplzfH6LfpnpqxJJfaTsPtIFAFHXNKm2fruZb
         VvpOZAAc5gY701oO7bD3kNkFMMmBZvujm6o+PbaHNfIEQLYsIemF22TA/JHFKQL/3PnS
         MgJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1mVVlUHPCyn2sW+PwW1H3gggIdWMOPKYP48N/WOAIbAo/0EXuH
	PF9BItHuuk0W1/9qVmwxjbg=
X-Google-Smtp-Source: ADFU+vtLLBzYyLOcd6xzHN01NDU2k2F4DAqhY03AqWlGaZU1G/GogkzvLY3Q2OeEI7m2gvFoUP3dmw==
X-Received: by 2002:aca:c5ca:: with SMTP id v193mr3051700oif.164.1583260718816;
        Tue, 03 Mar 2020 10:38:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a96:: with SMTP id i22ls1295756otf.9.gmail; Tue, 03 Mar
 2020 10:38:38 -0800 (PST)
X-Received: by 2002:a9d:6251:: with SMTP id i17mr4580592otk.14.1583260718461;
        Tue, 03 Mar 2020 10:38:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583260718; cv=none;
        d=google.com; s=arc-20160816;
        b=QLUDYqN/S7+ZOnKIUkAADRoe4zG8vPlJqZtKHBW1fdWo8q1B1sh31LY1u/3CNJN8WS
         GCczPSsCTg8XfSnBir4mgDmo7atq8f0tu/4du6gHZNoqrmJFdXmXdJnQqjVbZqe2/aSJ
         MS3XytNMiuq2OjhIvwycqTljdoJ6V/0Lw3ytbornXfKVeUIS1Dom5w4X6wbVFbaCX5Ns
         G6Y4Ure+sLw9dRf3jl/3fjsZLPVIiAl4PlV+XFUFXhDvVQzE2Y9/5cWjzEPCuoHO9y6P
         jDS55NwiTlif2XAe3xGvHmRax4kPmlRbaIg9WvkpzjTKwY74EUgHiA2h0siEd2Nlqz4S
         cb9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=ekzTDcHCRQhFhEYKFYf7vjPiVX/qteSf8RSTT6fWMV8=;
        b=InhOuodtPI/q7c0m296+QRrP2ZmJTGXguiZw106WlEYtixpjTieI7jrZZIr52oF/OT
         ZpHy/zXh3pdWVP50cJ4imLqVIEUvbsHi/vFuRHTORtUqF1o3lLN5hGwIQBEuJYyHPn1s
         4AbwptGZpEVC6L8As8JWc7HHq9+mrsF02fENeVi34X6Es821txoSiPP3ONyHche/hnTB
         +Rc//SHiAlEXXMjHZEZktvb0DAxBJbdGLsLhDN8Pkwbq91oK/AwlcGBgCyHuzmStk930
         4uNdzsLITonFIT4ftO8M5EkjXw5LVrgjHVdLpiVIMl4jEMGTaW/8z1rtpFM8IzjodnlY
         GpSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b="E0P/BeRM";
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id z12si925057oid.0.2020.03.03.10.38.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 10:38:38 -0800 (PST)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id j7so1723923plt.1
        for <clang-built-linux@googlegroups.com>; Tue, 03 Mar 2020 10:38:38 -0800 (PST)
X-Received: by 2002:a17:90a:d98a:: with SMTP id d10mr5247716pjv.178.1583260717448;
        Tue, 03 Mar 2020 10:38:37 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
        by smtp.gmail.com with ESMTPSA id z4sm23824824pfn.42.2020.03.03.10.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2020 10:38:37 -0800 (PST)
Date: Tue, 03 Mar 2020 10:38:37 -0800 (PST)
Subject: Re: RISC-V: Fix the build on LLVM-based toolchains
In-Reply-To: <CAKwvOdkgpvxCfBQNDaaZ7BpGsQqwkoukp=nAUhnoLC_nZTR5gg@mail.gmail.com>
CC: linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
  kernel-team@android.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <mhng-a55be814-523e-4aba-8b6d-f34d22eaee78@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b="E0P/BeRM";       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Fri, 28 Feb 2020 15:31:13 PST (-0800), Nick Desaulniers wrote:
> On Thu, Feb 27, 2020 at 1:35 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> The RISC-V LLVM port has progressed to the point where it should be able to use
>> it to compile Linux.  Unfortunately we ended up with a few GNU-isms in our port
>> so that doesn't work out of the box, but I don't think the code without them is
>> any uglier than the code with them so I'm happy to support both toolchains.
>> There are still some issues using the GNU assembler to compile clang's assembly
>> (at least got_pcrel_hi, but there may be others).  I'm going to call those
>> binutils bugs, though, and chase them around over there.
>>
>> While the first one could be considered a bug fix, I think the bug is unlikely
>> enough to manifst that I'm going to wait for the merge window for these.  I'm
>> going to preemptively drop them on for-next now, but as I haven't really
>> started building that branch they'll be rebased (my current plan is to start
>> taking 5.7 patches on top of rc4, as it seems like things are shaping up to be
>> fairly solid on our end).  If there are any comments I'll handle them as part
>> of the rebase, but I'd like the various autobuilders to start chewing on these.
>>
>> Unfortunately the kernel compiled with LLVM doesn't boot for me.
>
> Thanks for the series! In general, our approach for bringing various
> architectures online has been:
> 1. get it building
> 2. get it booting
> 3. get it running well
>
> For most architectures, 1 included 2 (per chance).  Mips was a notable
> case of 1 not including 2 due to undefined behavior we found and
> removed.  There's always a chance of compiler bugs, too. With the
> above series, we should now be able to start digging into 2.

Thanks!  LMK if you have any issues, but from looking at the bug it should be
fairly straight-forward: init isn't being run, returning some bogus error like
file not found.  I wouldn't be surprised if we had some undefined behavior
(maybe ubsan runs would be a good idea?), but I also wouldn't be surprised if
it's a compiler issue given that LLVM is pretty new and a lot of these bogus
error returns can come from reasonable backend bugs (shortcutting some type
conversion due to some instruction pattern issue, for example).

Hopefully it's just a small issue... :)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-a55be814-523e-4aba-8b6d-f34d22eaee78%40palmerdabbelt-glaptop1.
