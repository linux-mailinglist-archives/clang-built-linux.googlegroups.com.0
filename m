Return-Path: <clang-built-linux+bncBDKLVUPVRAPRBQPZ4P6QKGQEFIT7DVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED812BBEBD
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 12:40:50 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id k29sf3306751lfj.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 03:40:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605958850; cv=pass;
        d=google.com; s=arc-20160816;
        b=TY9hKu5sQ9eeGTwTgrVfPig30Lr49EhvLbLa6VmzGylcSTPn0APDshAI+8rAb8j6nE
         JgQLa8dEUWBnZWljC8nvBEgoLtVd1PaL7HmW0GpRpxrWudXZwCYgV3dVb74N0A0mQnhT
         DAV3k2uMVOE8PJds/Mwvqt4iZBvXOLtALo2tXikOlTLjOai3Q7yw67RlF50tb2P9oh+d
         eawcQSl31YhMZu6/WwLirKDzaD7dURHnRahziHgKj/c8WqDuxQegEZrPaYSqw+z8qNaU
         piz9eg3gt3R7USAAYbMT0biLKzgWJCsjB0YZxwY9xeX26GfukwtvVMe/NcN+78Agcm5S
         sFVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=/yyAh6Y0TKZJ3rCfUdBMGtml1hgOYBKZY2dVfjcoHUU=;
        b=N+TFB7FnqDlZ3UG1OtxaHPsoc/p3ATC+saXSezKW5ttdwkA8yIXqsN799+MOzpEvGS
         iapgVS25ruS8uS3Udo5TM4frEAYtKaPqqag3/rs/40RqGaPeGbC1oJnjTshj3CbYqLOF
         dIbOPt71DXXBMEBmBcpS8gKDIyLVyjnb1zyDUN9nPW+1L5Ekf9tzazG7zTlhC9YWOo5O
         5wAqbJj8syoAZHzhd2TqgU1XvfDSgY80ALe3JE4NZhts4ACFXfn9WLmAETHtBGz0UY/N
         ilNCnENefSLKUjiW23NXTDCXxi6b9GJSe2vIMguQmNsiYbv0Sc+4Y5zkXmjiYpIsxbRA
         StDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of maz@misterjones.org designates 51.254.78.96 as permitted sender) smtp.mailfrom=maz@misterjones.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/yyAh6Y0TKZJ3rCfUdBMGtml1hgOYBKZY2dVfjcoHUU=;
        b=Z+f667ZL121jwBhDvnxaNXKxCn0hsP9AYoEvg8fdYiHSZdnDhmkUtsIeYb5HNXjNsw
         1dsssRjZH2goeA2YfjFz3Re/X2WfCwS8bQZH0OgO29QyS5wMeb6VRTtAGST6iUPVFu96
         urD96O7bOASIl+EuUczDiWv9fKO5V0icoQ5x4/ZxDYYjfGgddWC30jDHtL7xkPRUfQq3
         dx7oR/LBqa9LRqhGOlOxeVmKrnnnnFpGT2vAU2CdGjZMDESwygzN04Ihu5em3V3+gFrq
         RK0vD19jiQbSCR8qIFuv99nLv3/xyRVvitIINP5Lsik8FqdmD8i++N2LzdJ/cRfGr9lF
         n1Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/yyAh6Y0TKZJ3rCfUdBMGtml1hgOYBKZY2dVfjcoHUU=;
        b=sy9wftQXCzadJ4pZ+pDzzo91QDX77Udc2slDAs9EzBvOwNaKfXUG8aC2sgDkOxXfSh
         7dEbaqNxH53wU922SQDz7VZGHCWB85U3BqQClc876MdlkBmYPZcetFJFY5Lw+pRZme7t
         9xAaBLiOemmr0fOoI55eQChvfHsu1YdZgx5vr365Tf15UArUI2UKr/2H7PAfCPbA4h2N
         OeVgSDeSrQjPnHGdynNQe719XAICtzogPXZajHxyCG+bBpszfGUhdtj+idJfoGMjMos/
         3gm/OzS5mKFtR7n1VnnxrWdkMvmJhG5nOMQlse0mqPw8k7svPyF0BEumKknmM5i4eAcQ
         eiyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BaoT2KIVFsZx/qDC0LzlQllUB3uC+armNLEtDXzp6zrt3slWP
	WvWS/njFjDE6gA/F5JUX35M=
X-Google-Smtp-Source: ABdhPJyVy2JM4e5ZD9c9j3Q6eQyxonufZwf0IIQuD5nzjlk1bk9+Kp3zcgOVf1LaCj+lqeXtOz8hrw==
X-Received: by 2002:a2e:720a:: with SMTP id n10mr8770737ljc.351.1605958849999;
        Sat, 21 Nov 2020 03:40:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7619:: with SMTP id r25ls1499113ljc.11.gmail; Sat, 21
 Nov 2020 03:40:49 -0800 (PST)
X-Received: by 2002:a2e:91cd:: with SMTP id u13mr8922354ljg.239.1605958849014;
        Sat, 21 Nov 2020 03:40:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605958849; cv=none;
        d=google.com; s=arc-20160816;
        b=pv2fjNpZPfCj4Uqh+36+i8TMwJp2rP1wgghAp5YH3dCbZlI+bp5IUboCoARMJBBHJn
         edEE3jWyB4SP4Gu++94xC0A41JmrE9sHECOINKYjUh/kn62kifWrWRK+UyITioNuS3sw
         kqX8P9ZVqha1rFASi0RCJ1W8lkRNH6Akxc1Na5zD3M7gEDQqoZtBJtlx4L2E+dAsdPUg
         ouYpHC7recWMiHfBxt8/i7kY1zL+AQATIJBPr2aMTl8KYZz5UJdOr6TF8OYTXegLPlOC
         fzuYsFn+M7sNFYB6Q/UYYs8g1S+HJXR8R1NhGz3ss9s2Yv7pL9oW9fkfaUXMW1k7pMBy
         DI/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version;
        bh=F2oz3YEyyGjJlNSmm5o2HWB4QKXzMXSCzIohxuO0Nlc=;
        b=vWJgj0QRFWFuiAeCsNOIHWwrcDxPTVl2q9PKBqkv7yS9D8N61/S4c5/GQt9U7I3ErI
         A0gYYZdihyGAUkxB84Tem5QrB7d0MnNz3HT7LnF8OeeglZhg1ZB0xC43U3fpdKDWOQoA
         zE4hIHdWHvwtvfCVBI3ZBlW6NmDwhbzv8vL64G/3AKHZ45lUOUAoQvykTcvWLHbTdRNB
         k5pmQ2RSJGUVSSoLZ/xDRA1ePUpMHx4cwIJzkunwkwzdCru7rI2kChnaKCNpm9DuSPa9
         k9ecoG8W0mDf5iBCUZkvKg4Ctga/GRKDCfCa9gl6CnaJvRBOgfoWajqouLuNHH9MtU2q
         8z0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of maz@misterjones.org designates 51.254.78.96 as permitted sender) smtp.mailfrom=maz@misterjones.org
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org. [51.254.78.96])
        by gmr-mx.google.com with ESMTPS id 26si178031lfr.13.2020.11.21.03.40.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 03:40:48 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of maz@misterjones.org designates 51.254.78.96 as permitted sender) client-ip=51.254.78.96;
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94)
	(envelope-from <maz@misterjones.org>)
	id 1kgRFo-00CVLU-BN; Sat, 21 Nov 2020 11:40:32 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Sat, 21 Nov 2020 11:40:32 +0000
From: Marc Zyngier <maz@misterjones.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-arch
 <linux-arch@vger.kernel.org>, Alistair Delva <adelva@google.com>, Kees Cook
 <keescook@chromium.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kernel
 Hardening <kernel-hardening@lists.openwall.com>, Peter Zijlstra
 <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>, PCI <linux-pci@vger.kernel.org>, LKML
 <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Sami Tolvanen
 <samitolvanen@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon
 <will@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
In-Reply-To: <CAKwvOdmk1D0dLDOHEWX=jHpUxUT2JbwgnF62Qv3Rv=coNPadHg@mail.gmail.com>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com>
 <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
 <CAKwvOdmpBNx9iSguGXivjJ03FaN5rgv2oaXZUQxYPdRccQmdyQ@mail.gmail.com>
 <CAMj1kXEoPEd6GzjL1XuxTPwitbR03BiBEXpAGtUytMj-h=vCkg@mail.gmail.com>
 <CAKwvOdmk1D0dLDOHEWX=jHpUxUT2JbwgnF62Qv3Rv=coNPadHg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.9
Message-ID: <a578025ea33108773fe9f3f6e1f180b5@misterjones.org>
X-Sender: maz@misterjones.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: ndesaulniers@google.com, ardb@kernel.org, linux-arch@vger.kernel.org, adelva@google.com, keescook@chromium.org, paulmck@kernel.org, kernel-hardening@lists.openwall.com, peterz@infradead.org, gregkh@linuxfoundation.org, masahiroy@kernel.org, linux-kbuild@vger.kernel.org, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, rostedt@goodmis.org, clang-built-linux@googlegroups.com, samitolvanen@google.com, jpoimboe@redhat.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@misterjones.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@misterjones.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of maz@misterjones.org designates
 51.254.78.96 as permitted sender) smtp.mailfrom=maz@misterjones.org
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

On 2020-11-20 23:53, Nick Desaulniers wrote:
> On Fri, Nov 20, 2020 at 3:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>> 
>> On Fri, 20 Nov 2020 at 21:19, Nick Desaulniers 
>> <ndesaulniers@google.com> wrote:
>> >
>> > On Fri, Nov 20, 2020 at 2:30 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>> > >
>> > > On Thu, 19 Nov 2020 at 00:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
>> > > >
>> > > > Thanks for continuing to drive this series Sami.  For the series,
>> > > >
>> > > > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> > > >
>> > > > I did virtualized boot tests with the series applied to aarch64
>> > > > defconfig without CONFIG_LTO, with CONFIG_LTO_CLANG, and a third time
>> > > > with CONFIG_THINLTO.  If you make changes to the series in follow ups,
>> > > > please drop my tested by tag from the modified patches and I'll help
>> > > > re-test.  Some minor feedback on the Kconfig change, but I'll post it
>> > > > off of that patch.
>> > > >
>> > >
>> > > When you say 'virtualized" do you mean QEMU on x86? Or actual
>> > > virtualization on an AArch64 KVM host?
>> >
>> > aarch64 guest on x86_64 host.  If you have additional configurations
>> > that are important to you, additional testing help would be
>> > appreciated.
>> >
>> 
>> Could you run this on an actual phone? Or does Android already ship
>> with this stuff?
> 
> By `this`, if you mean "the LTO series", it has been shipping on
> Android phones for years now, I think it's even required in the latest
> release.
> 
> If you mean "the LTO series + mainline" on a phone, well there's the
> android-mainline of https://android.googlesource.com/kernel/common/,
> in which this series was recently removed in order to facilitate
> rebasing Android's patches on ToT-mainline until getting the series
> landed upstream.  Bit of a chicken and the egg problem there.
> 
> If you mean "the LTO series + mainline + KVM" on a phone; I don't know
> the precise state of aarch64 KVM and Android (Will or Marc would
> know).

If you are lucky enough to have an Android system booting at EL2,
KVM should just works [1], though I haven't tried with this series.

> We did experiment recently with RockPI's for aach64 KVM, IIRC;
> I think Android is tricky as it still requires A64+A32/T32 chipsets,

Which is about 100% of the Android systems at the moment (I don't think
any of the asymmetric SoCs are in the wild yet). It doesn't really 
affect
KVM anyway.

          M.

[1] with the broken firmware gotchas that I believed to be erradicated
8 years ago, but are still prevalent in the Android world: laughable
PSCI implementation, invalid CNTFRQ_EL0...
-- 
Who you jivin' with that Cosmik Debris?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a578025ea33108773fe9f3f6e1f180b5%40misterjones.org.
