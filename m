Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBXE7SD6AKGQEWLESN3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CDA28AFB8
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 10:12:12 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id g71sf1362981wmg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 01:12:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602490332; cv=pass;
        d=google.com; s=arc-20160816;
        b=cz7npjucctm7f0C9i7nxHr2rSG6sbB43DWXIysxpp856UY4oc+wY12KducvVxfq9ib
         CTq5Bk0Nm0RqwO+SIWmtbzQcIRS6+jXSHHakWUJj6AbDQD4rPlGl2s94y/218BYF+yV+
         BDRaqZ49QhQSy82Y0WhCsENo9723VG4b0A3CCk0ns2HSGjTlzttZcy3uiD42iUbLgvzj
         ZBwP3buSg4VYqSHtEFmkRMJcCWyqrDvgO8mJLEIFtZFLKhMV/Rb5nKLez9a1ODwY9H/v
         2tc/sonCUJo+W+gmztvuAtyf9kfv77ZxYN/bKVEvwrYNYF+9BAvA4RUK88mIeNh6CvH3
         dwAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=T2UyP7yCXiPhGzQElAf1DRfo2B60q7LruMVjsaxfIbw=;
        b=GasHCZtAPR45u5kH2TeXwW5OZsPHcEZhowUSoOX18E5nG2krCvKHAsJoZrCRmKaALg
         vo/2MjDdBerYSRZniRz61M/zuBVnzy3QpFZVa7jB1x4dpF2IS1ETgWDuyFxnFYSYh/zB
         1n9G2+ebZ3iYhfZ0ywZQUDWbcP48/gZHNJ7qzUhMOB6RyqgsNrnF79cfKz4DvRMs2YRF
         iZdd0hvLq8aTbj2H5QGYuj8iBSoEdFyAVQPGrj2CqtAda2+rYu8bT75/PQGfZ691aizk
         IPu+zhXT/KN4n2OuCsTmfzx7fsJBhUhtQCmrjiICSrNoNTEiFzt9NYu8XdTHLpfAnql8
         TSiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T2UyP7yCXiPhGzQElAf1DRfo2B60q7LruMVjsaxfIbw=;
        b=kyv+5ygOlohrIr2OoumgTf9rtY63/6ZdXpbofo1PBG7trccghTeaSdyV1Rv64Uwbk1
         AcIf4EZDuIQeBdAxKcHi+8MnZEYF/MVZb0NeyibMIULYvcTHDBsIBnblVl2aPU18p/Yl
         uT2TgJTDa7dQUBLBAPv80oNCrrDg0DsdhPxHuZVsCXsfYVRBhNqc1QlLmJVY8bLY+bPA
         gwXW8aCgorwKsZVn0foafASD5/Sw/+j61h4yQxgIFx61Ui4OE20jpG6hgMB/6kpN69+j
         l2ixHN1ISEJCDEUWboOg4eTPK1YvbHF0tGOPDJho/HMTvZJ0zoUk9m2g7/uy74y1pbnN
         A/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T2UyP7yCXiPhGzQElAf1DRfo2B60q7LruMVjsaxfIbw=;
        b=RcsAiPrN7vDxR1Lg1+6gZvGPt7tBjHAxJ/WCurXcPLdivh4lZB9IE7BCE9hCpKSTED
         6ku3bWo7+VfRKlC0kxNRRu5My2YjaVu+kofW5DTMwHEm/Yz2zPM0F4dVJLfFOVpgYil6
         O1+CqfoY6mSh1+32kFUaC8Yb1Zuz5uqblgnZ69/kzxkHgjkJEN6HwxlDhtdvn7huj7lQ
         4AzRrrGoURrH9X7OS/SyHiTH+MJdvIP0Lqt0nYzPE+ztcxTF9lXBnYoDDcXiYeMXfv65
         oT8Wb6F6w2GToOYMGHcBmHm1dJEDGwuMKkONAjlQbbkzL9hNuYOrLcPOWvM2Yrc4DKY0
         2Qhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310gGtk7RvWSyzH6GBoYSdFc04/Qs45kVhzVuSi0qT6+pdx0xRd
	wNyrEZPtJmHFqaujuJ7hJ8E=
X-Google-Smtp-Source: ABdhPJybCoyJaimBvonP2XYqdEbGL7e5QzuHxYAMOFxfNwLQ8hwHAnnOHzcd2OHH54KS3PGKR3xQbg==
X-Received: by 2002:adf:90a2:: with SMTP id i31mr30896952wri.276.1602490332269;
        Mon, 12 Oct 2020 01:12:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7e4e:: with SMTP id z75ls7927205wmc.0.canary-gmail; Mon,
 12 Oct 2020 01:12:11 -0700 (PDT)
X-Received: by 2002:a1c:a983:: with SMTP id s125mr10065279wme.50.1602490331393;
        Mon, 12 Oct 2020 01:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602490331; cv=none;
        d=google.com; s=arc-20160816;
        b=jb2vEyr5fo1j6cdXjQee0+OVmBI2VI4S7DLZ7FA8TQwzkDyyCwMCm4jUJf1Asc4tjJ
         wAUm5USnegviIx5opKStYLvGO5reS2uvb82Y+WYjlvIWTcygQ6kfc9FSZyfB7LbfsbIp
         GDeq7VwPwv1JDyR/UmVqmWG6JTSef9PqvKQWa0C3YtevzIELfMgUoSgxA7m/SifpwlBj
         RwLUwET9L2sfmJ/NxfzmX0kVOKVl5OC7rRB38EF9WoDfT0xWMbRd8VpUMAjchIh39ZT9
         fvLlRGrT6QBL0BKKPgxlFQ170JOsgz7nnxJ9OwG6RbB3Mbl6jjfMOmiRGm6rXFeLLXST
         s1xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=0hn52qLsVT94B4C5C2WImMMs4rzHJEmy25F0+lQUSck=;
        b=d3Ecg0F4AeUOhxyFEiU2bBr9BqZSCEJndlQLKZCS+tj7fexUCddA+2cIR4ozC2RWb4
         qQF4MDnk9u8u/Gjmtk+RBVzLKZ4ywci5hdUoWAzBEW0SixqMD9Gkm8xFMag47cmZW0kT
         4fULOkp5k/mHJydsmx3hmGaETMSBJqPdlHj1U2ceUCiIjYTrH+RyCxl1WnC7kE2PPttR
         RRt4SquyA6bN3S2GDSG7zYLTNuZTOMQvL9XRo8lHmA7qqkuS0QYYiQo25KL8QfG6XkQp
         KRAEeYQs5Hkp0PAx5uMmPWCQAtzQHthXIHolYMSVemZ2AxkmkBtkMMX2pRetpsyTx4Uf
         mhfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id e5si497811wrj.3.2020.10.12.01.12.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 01:12:11 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from mail-lj1-f180.google.com ([209.85.208.180]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MGQzj-1kgUrf3G4T-00Gmxq for <clang-built-linux@googlegroups.com>; Mon, 12
 Oct 2020 10:12:10 +0200
Received: by mail-lj1-f180.google.com with SMTP id y16so14902443ljk.1
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 01:12:10 -0700 (PDT)
X-Received: by 2002:a2e:83c9:: with SMTP id s9mr9732795ljh.168.1602490330242;
 Mon, 12 Oct 2020 01:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch> <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
 <20201005210808.GE56634@lunn.ch> <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
In-Reply-To: <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 12 Oct 2020 10:11:53 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2LxR7BXhMktQN-Q-JpYq0ziMZVPHhu47k3CQ9OuKWUTg@mail.gmail.com>
Message-ID: <CAK8P3a2LxR7BXhMktQN-Q-JpYq0ziMZVPHhu47k3CQ9OuKWUTg@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Nick Desaulniers <ndesaulniers@google.com>, 
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:aaQQeqeTA4SZ2aQh8BgeCIxHwJKBqBqWqCxeOkin3CS0mE4Yub6
 i+9R5YUT84UswgNvg59+yed9tUFoRwQ/lYl6T9YDzplE5NTWLV9lv9747q7i2SESmLS/mqz
 AgMR0kV0heDs1PaG9Lfj1N1XIVv1KXrFI9PPkyHINqMpwKU3NGxZjgtQ62QMoj/gmUaI0rJ
 R8d9pQwUr/Euba6LUKZuw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:coHPkRWj5sQ=:zt6PgV9bZ+PBsRx8ToKepv
 nQf7/NuG1MSKhNlObJa4foFkd8w5shrZPyTdy3H0lADntBN0sFwfquoUK9MVo9gCioCusiLaH
 OVzJBTxPBDuuaBjGauaev+FQlBMAZAxOJrxbfcGoo9fQ5uaifUWVeoNjPnlpvC6PWP3WZSFmY
 lSVA7ep9O/klrOctLbXyWTnnSlod052+Z4BYODJDxh3LCPciOiniFCYuxXICaILjDYDk9Rppn
 eAu1tJsLeDerhRtVONpUScFgL0dNai+PC0X8VsXc1W20G5Sr+0g6Jxxtf3xWOdt7VVSaFSZG0
 Oji60/xjp0Ec4oR+cD0f2dejn+STygZVaFBVxXMFCx3/Fb8k5Chsct3Ee2pS+/gTxLr+5TLki
 3DkhiXXm/M8KGv/heJhPcxr6YrYGUHDGtzvy4bHt/J7Jkr0zU/g18T4OwAJY5vMZEE8HgKVXK
 YReXKVBXWCa/QwcOxO1r3lanUtfkMgHcllg7FpbQDmF1pUEzztyGM+2XE3lfjLOa0qPwKbSi4
 rvNo0vQqiO8cfinUwaA9GQwfa3xiU0TUSE2wz6WCGY2yRWl3iRSC+AOoqA6Xo3TDSzXB3bpGp
 MhDiJBSPFowRZI0WgaMgKTOFafnqMFnwnQQxzfYg3ggdn8sEzEcFD2tvjAVzvyDpcu5yeP6kG
 fqOXWxdIbHq03/qd57P783D57D79GlWeOnPQI7l9BFuvU0KyKq8YHGRNPEIrHQUOtTR2uTCC6
 eiF5RAQkbt6rQci3xcSKyvCDz1mG3HZZaB/UESg36qE7QrzgOP9EbWTsJTFomJhlgrHYpMyT3
 vFWVjy/06P0MSEsEY3t8MEWwC+HjqWAxEWZ+qHQTO5+6YiX3QGrBszuh+7WX2aTuDeaX3jmVz
 jhdCmcrptb1KSufP62EQc0ReIbS/9l+P1WPZzGiXooTb2WuR/VpQXiEJ2BQ0agxpy4yaKlEDX
 R3ylIh4neBpbHhK83vrT2EqQwzNoTI3OHzusL3BY+ZQRearlTLVnv
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
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

On Sun, Oct 11, 2020 at 3:04 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> On Tue, Oct 6, 2020 at 6:08 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
>
> I am not a big fan of KBUILD_CFLAGS_W1_<timestamp>
> since it is ugly.
>
> I'd like to start with adding individual flags
> like drivers/gpu/drm/i915/Makefile, and see
> how difficult it would be to maintain it.

I don't really like that either, to be honest, mostly because that is
somewhat incompatible with my plan to move all the warning flags
out the command line and into _Pragma() lines in header files.

> One drawback of your approach is that
> you cannot set KBUILD_CFLAGS_W1_20200930
> until you eliminate all the warnings in the
> sub-directory in interest.
> (i.e. all or nothing approach)
>
> At best, you can only work out from 'old -> new' order
> because KBUILD_CFLAGS_W1_20200326 is a suer-set of
> KBUILD_CFLAGS_W1_20190907, which is a suer-set of
> KBUILD_CFLAGS_W1_20190617 ...
>
>
>
> If you add flags individually, you can start with
> low-hanging fruits, or ones with higher priority
> as Arnd mentions about -Wmissing-{declaration,prototypes}.
>
>
> For example, you might be able to set
> 'subdir-ccflags-y += -Wmissing-declarations'
> to drivers/net/Makefile, while
> 'subdir-ccflags-y += -Wunused-but-set-variable'
> stays in drivers/net/ethernet/Makefile.

I agree with the goal though. In particular it may be helpful to pick
a set of warning flags to always be enabled without also setting
-Wextra, which has different meanings depending on compiler
version, or between gcc and clang.

I wonder how different they really are, and we can probably find
out from https://github.com/Barro/compiler-warnings, but I have
not checked myself.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2LxR7BXhMktQN-Q-JpYq0ziMZVPHhu47k3CQ9OuKWUTg%40mail.gmail.com.
