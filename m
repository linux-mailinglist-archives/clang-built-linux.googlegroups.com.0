Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC5LYHVQKGQE2K4GR3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E38A979C
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 02:23:40 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id s2sf59566vsk.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 17:23:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567643020; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tz4Dvlgd4INnKV5lpBRiHcUPIl47CTxo/U61CcvUAh41SlBazZJbWFC8N9Ak0fhfIy
         M0VtO3fvz7gHF8c87fg2l1K1UDcLv4Mz6rJgeFqSGY2Vjz1BltX1w3YBV8jfGMoH4IlK
         aZTyGa5aBEMf2ntFrcUZpvqu7McF0s8IRyZSRqftqrD0wzR8xjhA+fjExFltSOl8soLF
         jOm4mjlZ9cVL+AnrGSO5uNGQ+u7G1S5AufgQbwL962QMWEe6Sb/ZrqrRWfoSdBCXMXI3
         hw9m5MDM2jojiQuEfl+dYJOtjv01jqjwPAUq+h2tum7D2uqnFRu24qtN/nkeDkHdimDz
         y3Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aw3xxQAFwlHBtfBn23tCvH9t2ypuY6ezn4urF8Zd3yg=;
        b=rD5lrvC0KzGU7FZRJJd8EfiRJVJhp4p9zJi/ZIvOk84zQydpWyXsZUjvzurcTewyxZ
         i9cWl1EKoJ9o1DVs9g/xxD5jU5lQD3fFt7n85yaGkGRNxHdvn9sUv+Lt1S5XtcuXmkAs
         D6UDuvsqy17scuajs7hpQg6UZcqAmQMqYGcs0I8wBnBHeit7GvYSlGNeAEJI29CKBvmN
         hDFihVZnSdvrVJ9GjN7aETL5SdaCRmeWrKmAIj74mLqGyzCTImZT92YtNkFzvOApQNe2
         vUk3Kr3EOJTd7WN7Snvx//wyd4j9CLapg9gjlvhFr6nd0w3lvkwOT1q3SPVgFDy3YXXN
         zdKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dtj7XFHP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aw3xxQAFwlHBtfBn23tCvH9t2ypuY6ezn4urF8Zd3yg=;
        b=IW2iKDdQ7Awi5MxHTAGqzcs2psQK4h/rGEdnzZ68vx6EQZWDxNTpbvxDX5SCgcmLBF
         CSFt/x4QA3Ci1FLUB/RGKOv0O6xkYyK4tnwIFhoA2nTQGvG3mQdpGwbj2y89tRts4+pQ
         kNY8rXSYqXeZOUlbfeIop8BNGmnyCnPjX1Ccwj0wlTrWsFqQcOPZN3I3LtaY8sW5ZuCQ
         8BaWdl39G3SCEoQ17+KpW/Iivz0yNZ5G7K846/1/GT16KB56dRLwdhF4wzKNvcxyYpSu
         K5h5yjii7BOU4hmcDqVmrVOUFL5ZcpHLAIJbZv7f73GGMYvTNIzvwn3UwgJkL11QSiRV
         v5Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aw3xxQAFwlHBtfBn23tCvH9t2ypuY6ezn4urF8Zd3yg=;
        b=d5a/j5M/TddgdCG3AxtpIzPO8BksHtZuWmre5IqV+/9FXHNlT7U8OfYzGZ3g/lXGx3
         lV8VqQldClH94QhRVnuCXOwqzYlbZoimhYWQJbnVTZte8OdT4rCOM5bVPdfpnVd77Rbz
         RUovirWwA4FJVTpZzZhzoT14AKYD6ZTQUHldRARiB4U/DCoNiiq0S0q+r1cRlzH3F1OV
         Ev6kWq+NHjrmyGrQ0tHwu3i2DWAHa0rEEy703+Y9NmHT4+XTAxyRwQsNopYizPdEacZr
         OH/tiJUjwDtnP3n9IxNivsoG6U6lqfR/HOlH4U/1CebiuhwNE6JtfGJi29nkvrmuaruL
         SJSQ==
X-Gm-Message-State: APjAAAVfZsLCL5hx2LW72gWkOydIcHkt/IizWNiaLmPyaJyhawxqYqoM
	aq2Vs/1EB71LzHDgpsPXSdQ=
X-Google-Smtp-Source: APXvYqwlHezwIPsc3C5H5G3gleKxVj9qFFR3fFOPuZcnFecqMLVhaHZnfxL63TQPT4eIEGRTYJdf5g==
X-Received: by 2002:a67:bb04:: with SMTP id m4mr329320vsn.89.1567643019980;
        Wed, 04 Sep 2019 17:23:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ae4e:: with SMTP id u14ls58611vsh.6.gmail; Wed, 04 Sep
 2019 17:23:39 -0700 (PDT)
X-Received: by 2002:a67:fd5a:: with SMTP id g26mr339148vsr.213.1567643019743;
        Wed, 04 Sep 2019 17:23:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567643019; cv=none;
        d=google.com; s=arc-20160816;
        b=HL0AbU0tZBzLkp2LHe0qEe9CPBNRKPd69Tf3mr/Ii6HTUJkjyKH5WXe20BEKWaR85x
         S0FEg17YLCdvwa7YqLq1bbQ+fNqcvpiLdGUMbbGBfegMaU/vPbknVpjdpxWkITMEDZ9y
         uOuQVSiZmMGDUuMCAqmZZz82ECF6Kpn+Z2EXEXW4pYkZnw0NUeLiSa7TSdSybCrkjwjC
         9FaonXKiaW3Jt6RDJMEYRN4P6FAUrVq9NefQQ66VlUZO+A4tYu3ODo/KMC+PsU2DuAzh
         bCgjTpgAwwEF3C8xwB2lQ2K6k8fqc5QLh407WlWgrYD7nOshHUuEahmRExQuZaBVZVmu
         1QPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7CKrfPs9bY4+1JCWPVff8SlFdFjfkWj3tkBTRcIvvog=;
        b=m/VfneDz0gCadA2kzwcqQ3tueQor6ag64LFEHEkDxSlUA+Tn+0L1uJTfasEq5F83qf
         efT9r/gcAZrHJeXQk9RyS6zgWGmCxueiKA+91dpLct3FF68PpVjLuOu+HUXnFkJ8a9/y
         gkAU8L0KcwQP5dXF7hKt7KFy1ej9U/q6/lMqGsOA513T9DZyyEA03KFz52RWTdVDZlDC
         SYF3YL9DqEyXzlv4fbyJkk7tJCiwIcjRqAPQleU/6ABCYT9F6Un5nC6UCrV9IdQm+aYe
         i8y/8uXtvN7I2AMPX5kwG8dIJIgu3rcYKZsXC+yYfMHb2hSKGYI2H6m1EovMXVKWf49/
         AWAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dtj7XFHP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 136si46133vkx.4.2019.09.04.17.23.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 17:23:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id m9so382277pls.8
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 17:23:39 -0700 (PDT)
X-Received: by 2002:a17:902:988a:: with SMTP id s10mr451231plp.119.1567643018426;
 Wed, 04 Sep 2019 17:23:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190904214505.GA15093@swahl-linux> <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
 <CAMVonLiOB4PnbnLGo9gP8MK8kGd_e9vW_t+GOPuHMO_RqmkKNA@mail.gmail.com> <CAMVonLjBcJm2DqyhybLjCDsm8P9jqSybvq0geDAfvbVn=P0N-g@mail.gmail.com>
In-Reply-To: <CAMVonLjBcJm2DqyhybLjCDsm8P9jqSybvq0geDAfvbVn=P0N-g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Sep 2019 17:23:27 -0700
Message-ID: <CAKwvOdnHT3sEq0XkOWVaOBhbypnPEXmtAE9fafC4Bk3xkU-cJA@mail.gmail.com>
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
To: Vaibhav Rustagi <vaibhavrustagi@google.com>
Cc: Steve Wahl <steve.wahl@hpe.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, russ.anderson@hpe.com, 
	dimitri.sivanich@hpe.com, mike.travis@hpe.com, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dtj7XFHP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Wed, Sep 4, 2019 at 5:19 PM 'Vaibhav Rustagi' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Wed, Sep 4, 2019 at 3:28 PM Vaibhav Rustagi
> <vaibhavrustagi@google.com> wrote:
> >
> > On Wed, Sep 4, 2019 at 3:19 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > Vaibhav, do you still have an environment setup to quickly test this
> > > again w/ Clang builds?
> >
> > I will setup the environment and will try the changes.
> >
> I tried the changes and kdump was working.
>

Great! Thanks for your help confirming the fix.  If you put your
"tested by tag" next time it may help some maintainers who use
automation to collect patches.  That way your help is immortalized in
the source!  Such a response would look like:

Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>

(see other patches in `git log`)
-- 
Thanks again,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnHT3sEq0XkOWVaOBhbypnPEXmtAE9fafC4Bk3xkU-cJA%40mail.gmail.com.
