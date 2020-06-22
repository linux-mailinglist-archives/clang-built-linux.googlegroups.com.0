Return-Path: <clang-built-linux+bncBDY3NC743AGBB56UYP3QKGQEIJOQVGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A51D5203DEB
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:29:28 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id s14sf5181723vkl.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:29:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592846967; cv=pass;
        d=google.com; s=arc-20160816;
        b=gthfYhutM/jj1T8U4l+vVILVbo7jEDH0R9sfc2ZkQKrjK4A2BHEcma2TS/dg2PRzHn
         uWK8PdHbIR7V2n+DNOBJ1u6RVLP4VXYbK/0AyWATABoYo9eF7uI9WgP4QGb/X2LXEfx9
         LgieA817QrehgzNK2Whl5UZ6vh3ZKlINxdGbbqh49lhDnj642yAjJjWdrrynoBN/Hi0W
         2VetptQZns3HsRrStx3cUY+nQIg99MFCRkB5gdrri3fvkPf644Lcu1gFuuFQI1D3Z+BA
         NNcYpleMlAjiDW+lPdRi4QcLBY1svU8oU+djLxTsOJs0hIcdWD2tTUg3hwFpJ6zCmHPh
         en4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=raKYHcM0ibPRbB7TdoqU9cnVbwID/ECnLkXK8g62uWw=;
        b=Jjme4epokjVarR76NCh9PmbxzSON0wT/Oc+uQ8lItIMiJr2JkrWFvNhvXdqRWDj6Zj
         GdQ1eTWOAMhCG6uPHtE2rpe1t0Kyz00BDSVmCu1KUp9hRH6IH9r5LKZVoSWzEpnXH/5Y
         1xYUqVBe0ontjv+508p9bRfsX0G4+cIpM7L0EVt+VrN/bzOYRWpROUrnw3BkSL/m1aaj
         47wwN0L1M+TxQby/4SLP8teIACS1sQDknSsHbRyW9GFAfJf37muRZfET4Yl3h/juQIrO
         wOZEooN1zSHWNw6RCX6imcCOuUmj6gnelxpJ3MHExotXhBkcjfxRlDmT6U3RpvQ9zOld
         glCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.181 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=raKYHcM0ibPRbB7TdoqU9cnVbwID/ECnLkXK8g62uWw=;
        b=fagTQO5ZtzqLeyxERHRHQMneEG/bvctI6gCW+w8kU/7H9MxmWurLUI8fRsvixcd/zg
         R92wnZuaJX0YBq2b64xjH+PQMzBFdTsAaR/PfFfBh+12Zl/RLoqIIXOyO39sxyaP3NG4
         +9F2C9CEAHGLy2Td5po8W61SL0TLOLxVSuKr49EgqWiCUTTABlJQEYh5o+0JPhkpd/CS
         7YIKYu1/tqmwuEsL01UEjnO9xR+jEfwK3igkgsereNy7alMHuLUj5kwf/ZAkloM++rlX
         PFB3geAKYSPdvmB12UQInkTPqaDNZ3XLSmnBGMcclqbC1viJ/C3Cx6s4+V0OrM6JVif2
         q5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=raKYHcM0ibPRbB7TdoqU9cnVbwID/ECnLkXK8g62uWw=;
        b=qsp0u8A8Wzxqr826fYyLRw6kOUK7ZiGJEOSAWd0ZfVkZ7QZNJZrs6hWJlBUB7cFhQl
         2uDJojOnpcbuizd1vrPNFb+umN+U+tf+sOAl+zeZiqcuTqFXEIuAXRXcvKbuwgKlCq6E
         oiVSqMFeBLS5FXe5hg6inh6bfeIvfLRPk8uCR+D4IC59d3lHP7TXgpHKm0zEQtMCuKTn
         oYVYVGD7au0i0gCS7px/lMOHttzKuaKHxo2t7YYlLA4zo6rrZ+zI2lfYZAKZZZOnoBH8
         pxlgkHeYMVwMMD+0LDM05cUDr9njfe5WDFGac5J1gyRj59pP8qyg1iU6+iN2JindSq8M
         Kh8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WTvWqe9Yd8g9mRsGEg1zsIRxGqg+ewZiSGEGcVvGpzh0X/RAs
	uWogNQcwT6+A1i79ocdgT70=
X-Google-Smtp-Source: ABdhPJxA4ZCiMPxQfkDDQl7t0F2iuaVpX2J5rd29YbQIGpyNIjfwFez2oQc+skngTxkFDWryykJUWg==
X-Received: by 2002:ab0:4d49:: with SMTP id k9mr12413119uag.45.1592846967636;
        Mon, 22 Jun 2020 10:29:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6e47:: with SMTP id j68ls2013146vsc.1.gmail; Mon, 22 Jun
 2020 10:29:27 -0700 (PDT)
X-Received: by 2002:a67:e445:: with SMTP id n5mr17195160vsm.73.1592846967247;
        Mon, 22 Jun 2020 10:29:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592846967; cv=none;
        d=google.com; s=arc-20160816;
        b=ORjb5gOfFVhCG1rUNhcLrOwATqJhdJZmCn9GZbM1o8zCufJS24dXUUW3zDnHhpjFOl
         jC3B1xV2dIOrRs5i3kGBO1Bp2ytERFoibDQO/JACVqiYv2+uqPY/5PKgbhevSFwfy5+R
         J7h44deH5XfKNipzz/TI0O2qwj6fnIb2V38Mfj9uwieXHwonTj+qnn4qA6KKbO+BiCoi
         Op41oGJtmgmZpcb7jvx1vyKugsUvjyTqKqN68CQ27pA0DeWaeGOZYU2QdMK6sXWRALI0
         DBimwrnXQpqNxljmdLQh2i/Ax4j4dxBeIEMgUS6VbLAIujG/ojxXe0lLaCbYAIZxzf+C
         PYxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=n2HEkSRSktD50fnWc7R92wgnchj5Frbi9khyaKZG2CY=;
        b=iKoJMt7IUy9VmO6t8NNTdDXtxtly/Di7l0mCNvsUslmyKDuj+KWoMmLO8SN+ZPk3KL
         1y+XYjsENU3fSsdjBzjf5jOz67KhpG0wHRIAYsft46R4TBUbOuJsq2MpeXzr8eIC1r3m
         CVwKm3/GUmwRoLi5DDIA0adtB4HWli09lKTuaQaQWt6V7e9EA7pdItHVpVQPrCDQPbye
         Ee/Q0Bvggg/rAQloLaRs83SjkbmDJywiqBgsru7JhyUone6gpT+GrVHVCOfqk75n2XQG
         pPHnmwe4onwoVHJiWOF+Gbwlzf5QQIV2TZIe4TGN4RM4Y+HJMvWBRTVPxBS/pnSY/Lza
         A0Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.181 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0181.hostedemail.com. [216.40.44.181])
        by gmr-mx.google.com with ESMTPS id v13si635135vsk.1.2020.06.22.10.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 10:29:27 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.181 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.181;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 4DE6318026A02;
	Mon, 22 Jun 2020 17:29:26 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:901:960:967:973:982:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2828:2902:3138:3139:3140:3141:3142:3353:3622:3653:3657:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:4605:5007:6117:6119:6742:6743:7901:7903:8814:10004:10400:10848:11232:11257:11658:11854:11914:12043:12297:12740:12760:12895:13069:13149:13230:13311:13357:13439:14094:14181:14659:14721:21080:21451:21627:21740:21939:21990:30012:30054:30060:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: need47_4e04c3f26e34
X-Filterd-Recvd-Size: 3750
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf20.hostedemail.com (Postfix) with ESMTPA;
	Mon, 22 Jun 2020 17:29:22 +0000 (UTC)
Message-ID: <adf85348dcbfbf64157e6519115b3a0c9f35df55.camel@perches.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/process
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Jonathan Corbet
	 <corbet@lwn.net>
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>, Randy Dunlap
 <rdunlap@infradead.org>, Tony Fischetti <tony.fischetti@gmail.com>, Chris
 Packham <chris.packham@alliedtelesis.co.nz>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>,  Nick Desaulniers <ndesaulniers@google.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>, 
 Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>,
 Will Deacon <will@kernel.org>,  "Chang S. Bae" <chang.seok.bae@intel.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook
 <keescook@chromium.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Jacob
 Huisman <jacobhuisman@kernelthusiast.com>, Federico Vaga
 <federico.vaga@vaga.pv.it>,  Jonathan =?ISO-8859-1?Q?Neusch=E4fer?=
 <j.neuschaefer@gmx.net>, Konstantin Ryabitsev
 <konstantin@linuxfoundation.org>,  Linux Doc Mailing List
 <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 10:29:20 -0700
In-Reply-To: <CANiq72m6BNYe2ETNXJ2oLc6Jzad6kBBJK7_dz+BwZCeqYFXZqg@mail.gmail.com>
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
	 <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
	 <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
	 <CANiq72=Y+beqZ8Dmieo_GKbyaLN8Nf1n3bVntj_o90Cn-nADRQ@mail.gmail.com>
	 <20200622070623.086f1623@lwn.net>
	 <CANiq72m6BNYe2ETNXJ2oLc6Jzad6kBBJK7_dz+BwZCeqYFXZqg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.2-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.181 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Mon, 2020-06-22 at 19:03 +0200, Miguel Ojeda wrote:
> On Mon, Jun 22, 2020 at 3:06 PM Jonathan Corbet <corbet@lwn.net> wrote:
> > As has been noted elsewhere, checkpatch.pl seems like the appropriate
> > place to make this check.  As for "the entire tree"...if this job gets
> > completed, "git grep" should be a fine way to do that.
> 
> `checkpatch` is not really enforced in many subsystems, no? Further,
> some existing and future HTTP links may support HTTPS later on.
> 
> As for `git grep`, agreed if we reach near 100%. Otherwise, no. In the
> general case, including the code for a task that has some likelihood
> of needing repetition is a safe bet, which is why I suggested it. The
> same script could be also used to check for broken links and related
> maintenance.

scripts/get_maintainer.pl --self-test=links has a reachability test
using wget.

Perhaps a script like that could be used for http:// vs https://

	## Link reachability
	} elsif (($type eq "W" || $type eq "Q" || $type eq "B") &&
		 $value =~ /^https?:/ &&
		 ($self_test eq "" || $self_test =~ /\blinks\b/)) {
	    next if (grep(m@^\Q$value\E$@, @good_links));
	    my $isbad = 0;
	    if (grep(m@^\Q$value\E$@, @bad_links)) {
	        $isbad = 1;
	    } else {
		my $output = `wget --spider -q --no-check-certificate --timeout 10 --tries 1 $value`;
		if ($? == 0) {
		    push(@good_links, $value);
		} else {
		    push(@bad_links, $value);
		    $isbad = 1;
		}
	    }
	    if ($isbad) {
	        print("$x->{file}:$x->{linenr}: warning: possible bad link\t$x->{line}\n");
	    }


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/adf85348dcbfbf64157e6519115b3a0c9f35df55.camel%40perches.com.
