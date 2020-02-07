Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHOT6LYQKGQEUNU27SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D28D154F8F
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Feb 2020 01:04:46 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id e15sf420196ioh.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 16:04:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581033885; cv=pass;
        d=google.com; s=arc-20160816;
        b=v2A10SBPFnLlhQ6taPf2FO9XLdNZ1+9bC8kuhkZi0Gm2aVOaHLGYh5THO07btc0SP8
         VAYBVdqwlpDvRUSqnDU5OzKFXxo0pF/oVB3BXAy4J2ulngcjhIQh6+m+ySaET6pubJfM
         KWZf3P5GMMyJyKbiEs2bBEXPLdVAdfUuQHyoe/UawVi2wnD534rhDKwe6CHLayRNrern
         Df5M33WjmiO0HpVj6TyuvFGd6i/YHY3vJysW0ia/9+WYdne14N/RhOFdUdYt5sWaHa67
         VpgJ2xNWI0MLIoOacTcyJGlnYPEFXlf/OQ5vel1ZVaJnB93zARJ33XkracXxAhev60ZP
         IRjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RE6W3ivFosIrs1V+hIV44klkScvnho/bxCSCXQydgAM=;
        b=Sg7J1PCw0J50RxxiHslPriNl3ft/r3dlq9XWwgM/xxJD1ACnehajqkGw4/RECYrOZj
         Oi3CWPmc2zRX4SZA0Nkdo4bPtkMjSKpyUYuAusEBdWbe1YeBAz7Vobh216F6zQy8+Wzz
         sNdrnfWq/8hj4bwrXQy5TpRSqukuMN1BNBDzXLODS/jo96JsTG7DDC/tlLZdChkCiqKP
         NuPNnQqzqmfUyxwXFoeOg4Y0fVanM5TYskLjhoaqUNL/7iT7qI4jajqO1D/oynL4q3ia
         axZU5aPJUC6BSYwqpZVi0A+fB6ovaHprVpEQnKhccxf3nFo98ykJYiHXtZbpuEjDn6U0
         fjTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dKSa49CE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RE6W3ivFosIrs1V+hIV44klkScvnho/bxCSCXQydgAM=;
        b=kpX2aXRnctjuyABrwNBM5q3RqJGsJASMa89TUge1cIClUQfFDuHytCWp+SKRuZfJO2
         sORRk39jtwam3AlCY5tT3TJ3RZ11zWns7Wd+mXNixVx2KpFqpyx0m8t28Rt3LsP4j4Pf
         GYuGQnfm2Wz0kKG+ANnDi6AXXoQUl2NzzwiVtlIRpDUwzL6byAxz0IFMJ592yhPues/9
         dEp2kJugc7/8DOol3Nrm3sRFq9IWYp8hA55EpI9fbWtz2Ov3bLSyoCU3fvJjmm8IS+5p
         vN5nqcX2xDeide0HvKd78BA5M+pwW5TCne+32plDblaecq7sJA1oD2eiKeqQIb4YIvn/
         ozQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RE6W3ivFosIrs1V+hIV44klkScvnho/bxCSCXQydgAM=;
        b=IT2zaPmXcpudkaweiWS9E/lJMz89sr4Y0wN5jsy0BjQTh9ZO6uvlaDnr/t1s7V7Phr
         vXrL3blB3S7sk5hmSDPjwxr0tTOiZrMZJ3kCuD8hm9iMqRLOMLUjj3kxsQybNDivku/9
         8dwm8OW5s8cSGypLbyHaY8B6ImllYpludq8KLNgLsiTYZxuOQOM/mGRH+HnZ+37AryWi
         /Wc7GkjG2KbtUnnlI4bXZqp6x88DY6PzgbStm56nWfVTfQ0rVWnab2dUE17iQ5MfyRCY
         SaSkzUaX1zUTR+0rjvjh/rLNQkdabWTQr8lrS9hZKJHO3c+x1jOiHPa77Dj27hVShtDU
         nQ4w==
X-Gm-Message-State: APjAAAXRUPY8Hx0qYWgHDB52GMIctsLoUd9xjpdWa5syIX9HPD3fUSPn
	yiP+FvX75ehQskexBUt4Lm0=
X-Google-Smtp-Source: APXvYqw7DK+NZr5S240dZxaaNizAx4EuuKtLh6sG3L7r98pwvuyxk+nINyy+Wkzd2W/eln5V7WGtuw==
X-Received: by 2002:a05:6e02:8e2:: with SMTP id n2mr6874105ilt.167.1581033885236;
        Thu, 06 Feb 2020 16:04:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7010:: with SMTP id f16ls903085jac.1.gmail; Thu, 06 Feb
 2020 16:04:44 -0800 (PST)
X-Received: by 2002:a02:13ca:: with SMTP id 193mr798859jaz.54.1581033884770;
        Thu, 06 Feb 2020 16:04:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581033884; cv=none;
        d=google.com; s=arc-20160816;
        b=mB23AE9wmwQmliwC9CdCrnRF6zD9h1LqD1RD9lRiMui0rwzqTyMfhFUvAwqbQmW8zJ
         2/R5PJ9RUvtlkLTgHr3V2BRNo98CvHoHI7lJVlNNpUbr2K0dKwrix9z3WTmD16aP5vlP
         +olzCAgTZnnIrRheqNtiDIy4J1zgEOQnagVwrf1KmXRjpj9hnMRFe7eLONgIFCC4paXY
         EF4yG/ppQJoonKFk/usAUuWO5S9//b8/mmJydquWizb5hkyxFZCNnHkdSc8yUAE9/C3G
         BlGPOvmCXxID6ctNoYkUcMVFgu9XsWjiX4zUNDESzEQuOsV/yGirOJeY6kexDhT1T9IZ
         N7EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1ZFFBxKxZAZaC7rKowP3dBpqjl3coMOLVdOhrj8QTtU=;
        b=ABI/j0Zp5/F6d+hZf/0W+viIbntPMI3cXoXBChFuMP00Vg+e27DPakBz7Dg+TYcNn7
         xljplzt0DBFLuAZ6PttViCQw5MBxcGbqU5LutKyT4vJP1nD2FOTm6Tv0qO+28l8JjWOz
         avK9ZmAN2WtH+6C+5Hl5CE6z1nRnmeEqDSIRyjLhy1FXMmrDLWzpzJvSBSRcUbfsi+YC
         +0LLLI5O2hfUEBTIGjbZN+4bi0omLNCWFti+EMqWLpcHC3YfaZYgF9GbsFBzhujdHU1/
         Q/bGseK+U0vOECDHLflKTaoYRoKekO24w0bGh22hNqdPu1qGTvQ6rugYSRAP3S7MQcCh
         krpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dKSa49CE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id z20si64563ill.5.2020.02.06.16.04.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 16:04:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id e8so222489plt.9
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 16:04:44 -0800 (PST)
X-Received: by 2002:a17:90a:be06:: with SMTP id a6mr438587pjs.73.1581033883832;
 Thu, 06 Feb 2020 16:04:43 -0800 (PST)
MIME-Version: 1.0
References: <20200206200345.175344-1-caij2003@gmail.com> <20200206232840.227705-1-ndesaulniers@google.com>
 <CAOHxzjGiO54BwUDR4zz6MwvFT3-XXDx830cQcQAcVUPA1N_emA@mail.gmail.com>
In-Reply-To: <CAOHxzjGiO54BwUDR4zz6MwvFT3-XXDx830cQcQAcVUPA1N_emA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 7 Feb 2020 00:04:31 +0000
Message-ID: <CAKwvOdkaQJrXt3y_QDyZpQpeJqB0nYsV_p21h63SS1k2Q3Da=w@mail.gmail.com>
Subject: Re: [PATCH] ASoC: soc-core: fix an uninitialized use
To: Jian Cai <caij2003@gmail.com>
Cc: alsa-devel@alsa-project.org, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dKSa49CE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Feb 7, 2020 at 12:55 AM Jian Cai <caij2003@gmail.com> wrote:
>
> Hi Nick,
>
> 'ret' is only defined in if branches and for loops (e.g. for_each_component_dais). If none of these branches or loops get executed, then eventually we end up having

https://elixir.bootlin.com/linux/latest/source/sound/soc/soc-core.c#L1276
and
https://elixir.bootlin.com/linux/latest/source/sound/soc/soc-core.c#L1287
both assign to `ret` before any `goto` is taken.  Are you perhaps
looking at an older branch of the LTS tree, but not the master branch
of the mainline tree? (Or it's possible that it's 1am here in Zurich,
and I should go to bed).


>
> int ret;
>
> err_probe:
>         if (ret < 0)
>                 soc_cleanup_component(component);
>
> With -ftrivial-auto-var-init=pattern, this code becomes
>
> int ret;
>
> err_probe:
>        ret = 0xAAAAAAAA;
>         if (ret < 0)
>                 soc_cleanup_component(component);
>
> So soc_cleanup_component gets called unintentionally this case, which causes the built kernel to miss some files.
>
>
>
> On Thu, Feb 6, 2020 at 3:28 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> > Fixed the uninitialized use of a signed integer variable ret in
>> > soc_probe_component when all its definitions are not executed. This
>> > caused  -ftrivial-auto-var-init=pattern to initialize the variable to
>> > repeated 0xAA (i.e. a negative value) and triggered the following code
>> > unintentionally.
>>
>> > Signed-off-by: Jian Cai <caij2003@gmail.com>
>>
>> Hi Jian,
>> I don't quite follow; it looks like `ret` is assigned to multiple times in
>> `soc_probe_component`. Are one of the return values of one of the functions
>> that are called then assigned to `ret` undefined? What control flow path leaves
>> `ret` unitialized?



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkaQJrXt3y_QDyZpQpeJqB0nYsV_p21h63SS1k2Q3Da%3Dw%40mail.gmail.com.
