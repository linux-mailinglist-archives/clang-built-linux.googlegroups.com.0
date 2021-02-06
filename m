Return-Path: <clang-built-linux+bncBD52NTUX6UGBBAXE7KAAMGQE5XU3BHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E54311E56
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 16:13:07 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id j14sf184741ljg.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 07:13:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612624387; cv=pass;
        d=google.com; s=arc-20160816;
        b=xX8aGv1vpOBaSyeidhEryGJN9wFoqKmR0Skj+9nmQqMfgM2ZveAIXuKeK5L9mvK5Qp
         xo0/4RD5sdYwuGH2/GlHEezHmUk5yZm1CHyQI9CF5RrT5caqOwIm+nCg2t62/mWklBPj
         XICWGLtKkgpz4/+UMW26PATXsJv/rUw6hti9yosgFfM5mzSc495VqNU6Sfo1UZ9RArS+
         PZKU3vU3Eu1qK/17CaqyE6F+f8z+EifpMLqlCeLi950xgm3EluixXCccZVjgMRHkFEUP
         UflTtPCkSjH5hp5MFUi/Lw+qlA/PKn0CV3oN7CwAOU+OI5sfJRqazEFsSHTDnPTeHnEs
         NOUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8iRIzCJRlJ1s5+CyAg5ZK1pQXDTE6W88t2IaTp+68Wk=;
        b=A6cfOFrYpiAryhZGV2QIPUTPktdrzmlR867CPeyESBSu9ub4p+xhp1if2O9kWRd+6C
         1A+LkekOsvPPrlWLy9iK5ggGlnTohG+AWjWtBDococEHWdSYdFkkj/bJVxQKWIuQ3xX6
         Am4jaafKClB8TW0/JfQL2+2td1SQJf2UwoqTsijWJ5XkB4qnK9xF9Ejw3jBZj7/kkQ9f
         F/bcdW4MVniNpsNbXwzDPMYjhrrkDUigBxGcxqX7TxeJQLI44NVOjreXALI81RMqLEew
         49zZZpk8G8cVDWteCUcHo0J+yCtbMQq7ZNxdnaw80VGm95BFBHKzher4+h3jgNR8IBXc
         IE6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8iRIzCJRlJ1s5+CyAg5ZK1pQXDTE6W88t2IaTp+68Wk=;
        b=FHwG93NZQMW+7SQeEqVFeF/20YD5yxhl69rzYIOoGlH0n+zdmdF60mWXuE/RBS4CYs
         22n+6petAORm5iVQMjAvyA1JuJd3JnMv9s3vBMmko7EGuGqOnyjCyDA32f+iBzAz7bMH
         1LQM7Rw7Av5bbOI75jWqm14WwSETQwL9sxEeX4+hwjto3Uvyp5jE9HsRbXw7KzA5goig
         mX7B9rYVRXn1j+Bglx8r2KSYLTSzIqRnCMM8tzdTyUjFjWIxhQLInhoyf8YnCvnyTLB9
         ebVdWrKIo0f/uTa6YaX5eBpFVZ6g7UtGeg9I5utnTXlmFc8PpXJKjgKnjjwfhi0JuSUX
         YYBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8iRIzCJRlJ1s5+CyAg5ZK1pQXDTE6W88t2IaTp+68Wk=;
        b=S77KSLclka6HdskvpiZX9gxnOIBsRMmrFAX12bdHvpm8aqvjCjX5ERorXLMMtQ55pc
         j5KsM/glfi0SSDzHqW1JHitDZE5TZ/XQRI8PF96BI/QqTHsPN+h3/dskP6YAw58wzZ8g
         zoh793LxqCdlehvb7rqbShT/LGwofa+w5vEl0AQFoW9Dl29elw6a0f6fJA+VM7lRO0fW
         zqh+DQhDxtfhnx4u7w8Nf64UC1eOy3ck1Awzx55vXNvQmi6o4HZ9wfWhQZOyjzrei3B6
         0QyR8fsbWeVpBO2PFZM66vv85dJdL4b/BrYSV9L9Cmnv63Ng/0ZczOqMAqOdqBQMIkkt
         Tjqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zLvH8Nc4iR3Vzpory7lHtXXwPvoHznexxY687xnBlWwYEABHq
	y309h7M+VL0/1nPt1ixIRzg=
X-Google-Smtp-Source: ABdhPJzcmVWeQUV+nu5JYWJzzjHGDwAp95d1xLU5LBKorvKYnXpNSCS7BAIj8KBp724bvlVGxgdueA==
X-Received: by 2002:a19:750d:: with SMTP id y13mr5567141lfe.236.1612624387254;
        Sat, 06 Feb 2021 07:13:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:285:: with SMTP id b5ls2153521ljo.1.gmail; Sat, 06
 Feb 2021 07:13:06 -0800 (PST)
X-Received: by 2002:a2e:85c3:: with SMTP id h3mr5530091ljj.431.1612624386228;
        Sat, 06 Feb 2021 07:13:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612624386; cv=none;
        d=google.com; s=arc-20160816;
        b=NWetTmoqyJQAWgjaNqUcjhVbrtw4h51WeFkjVluxXOyrr3tdjrPcka3wIpEWgy8X48
         Bn+CnRKrOsmbWM2v/fx+9gIrPhG4kAomedqhYFcXE0JDqYO9vMpK8PCIjSViNCesHT/q
         XoVbf4Bqmu9jrKmbNa4lXgaBtQpwLRI9ZWUZrFjB4MY/9FBTEnB+yQ1duqg2JSLfFL+e
         RSCcUR6+rQ1w7nJXigj2sZHn4tYn3HAwwfqAjiWilc4+vDCll74nLlTkNHhkkwz1ICxY
         Il6cy7O2RWwL4bBpeFNrK7y+QklQRktWdgB4iNB44XPT2l/joANaQjOjU+rarnH0aLcw
         gpkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=AKS3BvNO+o00xj/YwnKXFbTsTGVu2N/C2CqkaXv8KTE=;
        b=tNtt0ulmT9JzVCWHB2fWsELKOkFMVILvM5JYeVDeFVNHAJMRUZ9OfeQThjFWfwc5xx
         aCoJsVgp5c8qTh90ir95aNr9GduWFj8sfo0MBtIULMnDokJcHv5iE0cGo0PyWEOOBU0a
         DycjMJoDGehE1z4l5Ada0zVDyeNcCOOJlMfduJ2sVWKjNabVszGz55oK/PqZd4Up+dVe
         3kiaQQ4foxF8Ik8P80Fk6qdE0TcGtaANc06UgqbSdXW0JRTivj3UGxdKLq1s2Aw7q586
         9MNgTHf/vWQCih5lkYAFqna2wQzsWWGc29UjeYDx65qLQf4rNfdZHvYD7Iy3dZbvtMnY
         D39A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id u15si524700ljj.5.2021.02.06.07.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Feb 2021 07:13:05 -0800 (PST)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from librem (deer0x15.wildebeest.org [172.31.17.151])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id DFFA33027634;
	Sat,  6 Feb 2021 16:12:59 +0100 (CET)
Received: by librem (Postfix, from userid 1000)
	id 41626C100B; Sat,  6 Feb 2021 16:11:51 +0100 (CET)
Date: Sat, 6 Feb 2021 16:11:51 +0100
From: Mark Wielaard <mark@klomp.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>, Nick Clifton <nickc@redhat.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Yonghong Song <yhs@fb.com>,
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <nathan@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
Message-ID: <20210206151151.GB2851@wildebeest.org>
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com>
 <20210204103946.GA14802@wildebeest.org>
 <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com>
 <20fdd20fe067dba00b349407c4a0128c97c1a707.camel@klomp.org>
 <CAKwvOdmT4t==akMN7eHWgD_XdpN--PLpUj8vgujGJ4TpREvteQ@mail.gmail.com>
 <42d2542d4b7f9836121b92d9bf349afa920bd4cd.camel@klomp.org>
 <CAKwvOdmHM8srtLaEy+L_XGzO9TBbhP3csQNAhUTH_TmeDePkDQ@mail.gmail.com>
 <8696ef2e86c5d8078bf2d2c74fb3cbbecbd22c83.camel@klomp.org>
 <CAKwvOd=jMykgiR+fthEVeaP1c3-N6veZhKd2LZjeJ5KaqF4PHg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=jMykgiR+fthEVeaP1c3-N6veZhKd2LZjeJ5KaqF4PHg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
X-Original-Sender: mark@klomp.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted
 sender) smtp.mailfrom=mark@klomp.org
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

Hi Nick,

On Fri, Feb 05, 2021 at 01:18:11PM -0800, Nick Desaulniers wrote:
> On Fri, Feb 5, 2021 at 4:49 AM Mark Wielaard <mark@klomp.org> wrote:
> I guess I'm curious whether
> https://bugzilla.redhat.com/show_bug.cgi?id=1922707 came up during the
> mass rebuild of all of Fedora a few weeks ago?  Assuming the Linux
> kernel was part of that test, those warnings would have been both new
> and obviously related to changing the implicit default DWARF version.

Yes, looking at the build.log that warning was also present.  But the
dwarves pahole update to process DWARF5 was more important.  Also at
first it was believed this came from the binutils ld linker
scripts. Which were also updated first. Once your patch is accepted we
can resolve that bug.

Cheers,

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210206151151.GB2851%40wildebeest.org.
