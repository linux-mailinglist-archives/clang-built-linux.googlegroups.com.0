Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB4EJ3T2AKGQE5S5H4CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 887FF1AA1ED
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 14:58:25 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id y19sf1291904lfk.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 05:58:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586955505; cv=pass;
        d=google.com; s=arc-20160816;
        b=vgQO10ig48XAKOTKQR3LUnkMYxC3Bm6ynVPrcgoNpwS08QimQLHs2yXCCXKIlAqLDK
         wjmeltYbMto0sSz7AJzzCaatUAOxcRdvO2xXl2uY8qiD8zfVr3PjLDLJmLOXWyC1+0Xb
         RWswWcqUBy3M7ZWv4DEDpmE9cGlJSktzbby6w1U6gJj7Wsh7lmL5azwaKGoHE6CRnOPg
         kKJKUIHMSpz7UZOXZiwJ6odq6Oeo70U5G0tmgcGMxujn/ofOGPtKwYeMgCcoJSP9HGgS
         7OACaTL6eM7i3phyVE4RnqVAaEjRqjiD7qbP3OqIr4b37DZkZvca8fm2zvc+cDffE+so
         drpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uhP+g6HF2SDIXeyDrNKiMLYmnZe+GO6zhqKNt44CvlE=;
        b=zCn2BbQCY93MCft+FF3Wn+mLPgZ2ts3DQRMpfUlUkhP1f28vIvmwWV5s+MuZlQxte5
         PnOdkeZnbKu3Km1sXYOY1DaA8kQipotGn3MYLP8qzq9o/e95zWNnNQHZL9sh/aDPxEJ7
         ETIbffXeryfnyXo7WJhqQfM81A5owNz2AKBbVoLFHM61QPAWd2fn/kvrM5naCcd8+hoA
         BKytjQ+3uR07f4olRvc4nFS7qAtHPcZNakd53VxYHhUwKks+7UjpzyrpD5HZ+pFCan2Z
         8cvZ/mp0E3pv/a/Kv+EI0GKkONV5n9HA71zR2t1pYt6MN1VAUAoz/sxFRj8nzqdPs0qC
         slnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uhP+g6HF2SDIXeyDrNKiMLYmnZe+GO6zhqKNt44CvlE=;
        b=iFOiTZHn0mRO+Oi2WfW5dh8G8HQthW10Q44Z5bNGDJaOSpYRTjZHTyDx4EIdw0elsx
         Cg6jX2ybHJWog32nfoPvP++4XMMI8vYPlLh8/jxHDINrbsVKQ4EJDbo435T5FJUWEBtT
         G4oJv5utSHRPWjy69+aa3nRlRlQAvKCR3cu6UHmyL3fFRUY+a+m7r7UzTy5XbCjTTEcU
         gknqrTZjin3pmE/pBqUU/tZJnddsxY8rFgKut3uAoljppDvvkXYF0IW2P4Kp3OcFVyDc
         HiM/kOoC+KMEP/auxXLdpnvDxt5yC9I+cgQO6dq9gz1Brb2a46cDBmLy4wbooO5uTCHh
         D/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uhP+g6HF2SDIXeyDrNKiMLYmnZe+GO6zhqKNt44CvlE=;
        b=F1rSsbIcYWT2pcXfHKr/ITdWaD9zsYC82X9Fzlt5FGPYBJjvULdD8un4GDxgRLNBlQ
         hqJGlKyyFYKQnyOF9fKXxWfmIPi258FdlzOuD54fpHkLuMIk3aL7LTXRpVTZY+EVwFy1
         9byqb3NexvCI//mVJqeKhqD5DMYiVGc9wjQubalmMOHDcIrD57rEdkEjH2THoYhv7gKL
         AwSMvSwuzMOMdHckEsMg85Yf8gyxJge4oM2pjGxgMlaenxaH+3K83TY/UuGMG71Dmxg+
         Qz7vL1dfKkkHnLL9puvQ2PQNXWQyx/dCGI6HysTuH+Amqhp6MPA2K+y6Vhvhd/5lddmq
         wqHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub1dUeYO4DMqfayI+cTehLvlb08KN/1j8CMdzLZYqPyb7ArPCb3
	6y2tYRbQRZglAZ348KUaR+U=
X-Google-Smtp-Source: APiQypLC1rE9xJpN7GE37EgW/MUHBB966AVxkF5JTu8dlKEqmuS181VZK4UHC0ok2kl2ABnVioQZuQ==
X-Received: by 2002:a2e:3c10:: with SMTP id j16mr3156274lja.2.1586955505003;
        Wed, 15 Apr 2020 05:58:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5456:: with SMTP id d22ls973154lfn.6.gmail; Wed, 15 Apr
 2020 05:58:24 -0700 (PDT)
X-Received: by 2002:a19:ca13:: with SMTP id a19mr2997605lfg.68.1586955504159;
        Wed, 15 Apr 2020 05:58:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586955504; cv=none;
        d=google.com; s=arc-20160816;
        b=DyX/Tt8DZZz5TeBfkwUmHkxtaogDsFfAcnSVYgnwjTtEiGyTsUvwt4/aPjj7dB9XBD
         bGUGCZoD9EUc2EkoNdIUezZntjH+JclcbQIJ4uyV9AR3JrPTxZ25BcOFidr/S8ZThwwo
         PKznBn0gfw31+Aa4xL0PMfA4oLOKrkRHboBrEhYvTtSmdxt8lPbat/WLqo8OfQ9sAfQn
         GrCv1+QvmH1ViONoilRSaUDcMC+GWG6FOd1EkjepEcTghOaKjqNciT8rfezyC2QXi8qg
         0C+8t3xr7mVOXRtwi0hSUSQ8k3i/PRoWIWBh/44IhvqeEpp+sCGSSrF8WTGZgZIq4VVm
         EVbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=3dQzkeaPEkKtQ4Ca7PxA8kme4uKfFIC0bklnfpyhUkw=;
        b=HgQgSzoSIdrtohnp7fyxcir4kiuQ9GpAuxyle2dEz6vqdhEIGXtX2ungrxcdflSv+F
         SQRzCf8Of7anEQ1WLjeaBwrVTF5P2scTsgYcQGaJf7PLP4WAhFMKXJ2XZLXrtotQiDCJ
         rQ4uF321kF1bkNfXp9mr0tOwzErDIOV0SooJVCck0EUAuTzpqG9m85GSW3cL/9027eVv
         PvwI3XEbDKzVBLRxud71vYcFLAb60i2UGFPyUm/ODSnSCOYUfYQ7pQSOHRI1KRFaO2Dm
         cCSQHCCzqWw3rgmoeRY3RS6phpZSWQgwZwDkA4qs0opTQYsOZKKQ8C/x3pwEicW6eueh
         aPTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id a12si122739ljm.2.2020.04.15.05.58.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Apr 2020 05:58:24 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-qt1-f170.google.com ([209.85.160.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M3DFj-1jPX620toL-003b0I for <clang-built-linux@googlegroups.com>; Wed, 15
 Apr 2020 14:58:23 +0200
Received: by mail-qt1-f170.google.com with SMTP id o10so13038727qtr.6
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 05:58:23 -0700 (PDT)
X-Received: by 2002:ac8:6757:: with SMTP id n23mr8081126qtp.304.1586955502081;
 Wed, 15 Apr 2020 05:58:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
 <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
 <20200410123301.GX25745@shell.armlinux.org.uk> <CAMj1kXFpknCfwb6JMdk_SHopnGqMswgSqaQUeAUEh5yaV10vJg@mail.gmail.com>
 <CAKwvOdk-xwuppJzxd1+5sfsC8jYiP3t8D=aTNaYxnFCRDiEUmQ@mail.gmail.com>
 <CAMj1kXFHb8th0rv1yjrsr=c1o-g9_ERPUy4itnrVN13fcQcXag@mail.gmail.com>
 <CAKwvOdm5aawsa2-=atB8z6W8zo8YVgdDEVbU3i4evDcpo1_AxQ@mail.gmail.com>
 <202004141258.6D9CB92507@keescook> <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
In-Reply-To: <CAMj1kXG6_CO6pzeJCSeWiCDyLfWw+ZMuvkv_DLxe-si00fLd1Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 15 Apr 2020 14:58:05 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3Ko0XTLUGwBxVM=nNebGr6ww66+cCKbYBrd9A4ME0__w@mail.gmail.com>
Message-ID: <CAK8P3a3Ko0XTLUGwBxVM=nNebGr6ww66+cCKbYBrd9A4ME0__w@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Kristof Beyls <Kristof.Beyls@arm.com>, Stephen Hines <srhines@google.com>, 
	Luis Lozano <llozano@google.com>, Russell King - ARM Linux admin <linux@armlinux.org.uk>, 
	Jian Cai <caij2003@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>, 
	David Howells <dhowells@redhat.com>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
	Manoj Gupta <manojgupta@google.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Jian Cai <jiancai@google.com>, Doug Anderson <armlinux@m.disordat.com>, 
	Dan Williams <dan.j.williams@intel.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:20kLoq+URCRNcAbHgFpqvu1xSkuSVRahEicp6ZCB9CfuwceSYS5
 IOCFNhtVvM19C/mkwJExykEW9OGkwhCcJ+bh2BKmktsKVzbeDrzRYbCYJdZvmozHPL9BWP5
 Hu/uA0oXoQ/ODCLtc+ce1ALeRUk6V2CceZPNN/D5o3wN0WLD70FN6v0dhnG6NPn0kZWFVX7
 8OEyl25HNeTaYOeujA5Bg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Uug9oSufGyw=:4upB5WgUEehYETmKXJj7Bd
 e+ALDUtVB9eJ31L+6s+s4iPNUsc9ZZ4uPMN4STRIlTFPh48UkkjUwRwN3lv8HOaiLG4s3CtWD
 4/BrmJKItJaAd3wv9EFn3c3EhFPVCCzROqM8W5++f0597jrrcF1A3345S5WTHAvrn1x8+HY/K
 xQseKJHCcA4Q9xpoHBax8HFhPsrpiPuGkiYK4afvWdXlh1O17P0u8H3g1XxR8SXbFfJ6bvIS2
 /LifiKEck/f17h1oKow/OsLuPAb7IQTjs2BShkpx0P+I81MWU4qM6lXf0GTiFZXJ1/pCq5n1k
 nLkqb/vVxXqrGGnZ4sQvmmcJwUS3y6n9lX2XuwshzLHrgrtWdZyBjRum141z0u0bYrWYCHoc0
 ypfzHiyXBN69Fe3GNxfMGLOqi9sAeThRtTFL+h1PfRK30raNZ/W7kHCzkBk1HsWc9pH405Gb1
 0WGsQZpdv27vOQjPOMAm6TDnW0KH9HOgASXkusbNs072ILZ9QyUsIoES8sbn96k27IU3Vt4sj
 k16udPq7Xsm8WlxwVdV9GWBE7tBEBEd7E9bbvCgcle7GsFuBa3z2uZlh8AvRmLYB6Glwql4Lv
 bTj+d4JIFzi3RZ2Xsz35gcO/JpE2Z+s2YRdV7lOihHmK/eetpfDpY3hDA2NU2iaf/RYfX5W9H
 hXE9e3uclGS8Splh39yZM8YrpQzJ/nqA8C0zWhHjfaa3q7F46EmIqLWBH0yaRej3mcTf9jAsu
 mPLbJcPOwD2PId/DD7uPoCnHSNouIlu5Iaj31x5nSLyALkYKVcAIlDRGMNXaDIPqCRKnJLA+Q
 R5fWupWdNEIXeNz3qTdk7sRfcMrFPfeB3FCPb/tcqqs43AE8Po=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, Apr 15, 2020 at 12:32 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 14 Apr 2020 at 22:53, Kees Cook <keescook@chromium.org> wrote:
> >
> > I don't know if this will help, but I feel like folks might be talking
> > past each other a little here. I see two primary issues that are
> > colliding, and I just want to call them out specifically...
>
> To reiterate my point: I strongly prefer minor asm surgery over
> elaborate Kconfig plumbing if it means we can retain the functionality
> even when using LLVM tools. In particular, the use of macros to
> implement missing ISA support should be considered before any other
> solution, as these are already being used widely across architectures
> to fill in such gaps.

+1

> > What's a good middle ground here? For VLAs, I ended up getting akpm's
> > help by having him add -Wvla to his local builds and send nag emails
> > to people when they added VLAs. That's not really a thing here, but it
> > seems like there should be a way to avoid losing ground (in this case,
> > it's the erosion of attention: repeated known-issue warnings means the
> > CI gets ignored for the warnings on newly added issues). It does seem
> > to me like adding the negative depends is a reasonable first step: it
> > marks what hard things need fixing later without losing coverage for
> > things that can be more easily fixed now with available resources.
> >
> > For the specific iwmmxt.S case, perhaps the solution is the suggested
> > changes? I imagine it should be possible to do a binary diff to see zero
> > changes before/after.
>
> This code has been around since 2004. It has never been possible to
> assemble it with Clang's assembler. So the only thing this patch gives
> you is the ability to switch from a .config where IWMMXT was disabled
> by hand to one where it gets disabled automatically by Kconfig.
>
> So what hard-won ground are we losing here? Did IWMMXT recently get
> enabled in a defconfig that you care about?

I mainly care about the build testing aspect here, it seems we are getting
close to having the clang integrated assembler working with all .S files
in the kernel (it used to work for none), and I'd like to do randconfig and
allmodconfig tests that include these as well. Disabling the option works
for me, but your suggestion with the added macros is clearly better.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3Ko0XTLUGwBxVM%3DnNebGr6ww66%2BcCKbYBrd9A4ME0__w%40mail.gmail.com.
