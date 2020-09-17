Return-Path: <clang-built-linux+bncBDX5FLHOXQPRBA6QRX5QKGQECJXNRVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 834DC26DD00
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 15:43:32 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id q131sf1485855qke.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 06:43:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600350211; cv=pass;
        d=google.com; s=arc-20160816;
        b=slwdrTXgF6wrr6pd/i5EgDyCEk2uBt3GpiVl84hdsEbe4kxI16EAbDOab+3s1eK5N9
         UavIROHE4FyebYrU4pVadV1fnHaMDTVq6aPn9Fa1eKPy1fOXwSPmRk/jo094CvHdXcYc
         ejJ+TptpzY7iDeQV+F7ozjaRZDehP1Kkd7EmHAHF7bzNB+1u0+jri+UWEoyleV00Q/co
         Qi9OiReCS7m/5WNic7NgHj4aEuL1CUiNTGoBzymb2Rs2S+h0L+/ebTfnOgVY6+pRRgT1
         y/rX5bi3H/n+cNQKHDksF3B5JF+D/7gv+m+H6eldOfpBUhcQKdbybieJU4n7M8MISguh
         gHbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id
         :content-disposition:references:date:from:cc:to:subject:in-reply-to
         :sender:dkim-signature;
        bh=fMSQ2zM4PwEj1h8U9PMDUaDa54x2F2rglqqi15Fe5x0=;
        b=0Yyh3YzhtqKZ2YZ6spceQqTNk40b7CxDBeJmFHX7nPHmUP6RCZRJyXnBIk9Y0EcGXP
         Y/5SAooPK+4j3j/mcVuRm6UbVrCZcLDorVecHZHHFc/sngtXo2Uz2BSlbcJ5jvob69Es
         EE1qeQHhtPH0AMQXkC3w75qhDl7B8ODvPQZUaPByI0eH21LGnCXMV/XXGzbS6iWSCqSu
         JgxEeIFnK9LY8nnzK4Y4mERMN3HT8u5B9tsLjCJpL5wQ3PIJpb0jcepHu5onLiw+rNk9
         FzbwjMpAGknsNSVeSxk7rNxySKVEZntDwv0Bt5Nb8eb+GMqIneoDfvms/ct1b0Rbn4vo
         J+kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=nd59CFT1;
       spf=pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:in-reply-to:subject:to:cc:from:date:references
         :content-disposition:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fMSQ2zM4PwEj1h8U9PMDUaDa54x2F2rglqqi15Fe5x0=;
        b=miyv7kcfAYnxA3uj9jQAjC9FsFRmQNN97OkXT3jpITNL4eu1fQ09WS+zeyRvMzPj5q
         jX86UA2JHAdTAFQ1LxHoiPiAdLCMGQVoktYmaelVTVgB3155dRVABfNvGdszS+ypBpf7
         uLKPhqC/0rIjDQ+6Dzul7PeCQcRBoqkBNbnG1KxWcQgr9F1YNi274A3izhbLo6eRrFHx
         1/3au0q0cnul8pKwq77UIUvUCgnTcHcYTDXSTz6IAkMUt5wlb+ecs4+4ItLD39OOA8Lb
         XBoqSib+3flGsNtS3wRwNoU2naHOIz8xCwMNs0rhKZKA7SZ9xMBvE1teVeOsfZOGYUtz
         06Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:in-reply-to:subject:to:cc:from:date
         :references:content-disposition:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fMSQ2zM4PwEj1h8U9PMDUaDa54x2F2rglqqi15Fe5x0=;
        b=AujQEcThYYzt8Yeh/bVymfv6B6GKHHW1Fz4FplKNqsuwdjpoe2bgIGYOwtAEIiDY4y
         3uss3OQ4GQkyTfJipCXT3m3+AyB1l2DsycscsIoSYk9BqJcGzQhbRzdRk71tV+vHjGvg
         /SJYLTR2S+leilRiLlD5vg+mVukjF6SRbBPOWgnjTjFnfVy8EinXfaY4oerT1osSmNoT
         wCssP+XsWoMrh9t1DusbY8PTMRU/44WPwsZyNZuiRSnLPUptDfxHBqVe9Tu9AynqYo8A
         Fr87y4MRpukbi03ZR4SeII2vkaNQIw58OsfQut5K1EDYEAMIZL4u74l9OaKZK5exun0S
         juFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eyxDW9AC/N6aNJYTpUTHOeyGunnIZARcAgXN0XNYlojVqajLz
	tfdK1j7m5664V6FZ0kcDOaU=
X-Google-Smtp-Source: ABdhPJzRHHvvXMHvE/QduqLAYvqqXwv2wnas3lKaBdQyDRaPi63GeLW0C4JJKooRRDiG2fzOmo5ltg==
X-Received: by 2002:ac8:39a7:: with SMTP id v36mr29335843qte.140.1600350211195;
        Thu, 17 Sep 2020 06:43:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:728e:: with SMTP id v14ls909203qto.4.gmail; Thu, 17 Sep
 2020 06:43:30 -0700 (PDT)
X-Received: by 2002:ac8:3e09:: with SMTP id z9mr28708104qtf.227.1600350210683;
        Thu, 17 Sep 2020 06:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600350210; cv=none;
        d=google.com; s=arc-20160816;
        b=CUVUYekbHmo8VrLiV9Vvj+0E/NkiZwjIpoYJ1sUtmhNK8QFWfYPQ+NNrJLfpEJbqt7
         QSF5QqLarFPekY5vzNcu2GwFcWmPD0dkA2xUZZve3JtvwDr20Vqe3JLY/ZznQGbRCYgg
         7s9+RvkKGGlNX3uBYDHJhp9jRuzRgtEcBq0j0PN7BJGQ1FZHRb1uDiUh3WkfjSloEUUu
         gMYrF88fgbRTthwAKXLacUPeHBW65UxYLjDCjgXRIUd3V/3f6DkQJtj0hipkq8HS1qLO
         4EU9ePk5PCrMmS80ABjNJyBaL4jdqoEdhKnhhPufF5ZrEF7Pnvvac4sY74s1dZPu0XFB
         gZoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:content-disposition:references:date:from:cc
         :to:subject:in-reply-to:dkim-signature;
        bh=g0lGh8y48xlcJg58axc7uA7HpdeTV8Am20uQdlJGZ0s=;
        b=CB0NjhFudtPxR1oKIVeaa7/G0Gu0DYZ5DhD7/yjvCSy2C6vH+4GmJ31We8/kjuvR23
         Ya9io8Bqu8TOnIbLUbfYlw3mmEUZw08/jEXpJe1SoqKH89DZkCQ7A4Q7rd2qD4mqHRki
         feKNTyI5PgS7LPR0PDXKWFT8tHcla7Ev1er7RX1cR2FMhpNbenL5khOS4eGwDlxw+lx3
         xt8fW/F9K9mrZb67rNZ3jE9J/iX87WmRyqLjP15zNfdCuVNDHA9Z8feOE7sg1Q0VV8mt
         EzlBWq5T1E+E1NiAaiZHT4guRTaobjVLmOroTqXyljyIHChQyhE93cOeyXEGLPBomOmi
         iM1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=nd59CFT1;
       spf=pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id a27si1228900qtw.4.2020.09.17.06.43.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 06:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 08HDgr4I189644
	for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 09:43:30 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com [192.155.248.93])
	by mx0b-001b2d01.pphosted.com with ESMTP id 33m7qeanyu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 09:43:26 -0400
Received: from localhost
	by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
	for <clang-built-linux@googlegroups.com> from <Ulrich.Weigand@de.ibm.com>;
	Thu, 17 Sep 2020 13:43:03 -0000
Received: from us1a3-smtp03.a3.dal06.isc4sb.com (10.106.154.98)
	by smtp.notes.na.collabserv.com (10.106.227.39) with smtp.notes.na.collabserv.com ESMTP;
	Thu, 17 Sep 2020 13:43:00 -0000
Received: from us1a3-mail201.a3.dal06.isc4sb.com ([10.146.77.216])
          by us1a3-smtp03.a3.dal06.isc4sb.com
          with ESMTP id 2020091713425980-477565 ;
          Thu, 17 Sep 2020 13:42:59 +0000
In-Reply-To: <CAKwvOdkZrqjju7AY+otVAfLcKg1icu5q7bix71DssHhC-oCNPg@mail.gmail.com>
Subject: Re: buildroot on s390x
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
        clang-built-linux
 <clang-built-linux@googlegroups.com>,
        egorenar@linux.ibm.com, Vasily Gorbik
 <gor@linux.ibm.com>,
        Ilya Leoshkevich <iii@linux.ibm.com>, Joel Stanley
 <joel@jms.id.au>,
        Guenter Roeck <linux@roeck-us.net>,
        Stefan Schulze
 Frielinghaus <Stefan.Schulze.Frielinghaus@ibm.com>
From: "Ulrich Weigand" <Ulrich.Weigand@de.ibm.com>
Date: Thu, 17 Sep 2020 15:42:44 +0200
References: <OFC0683E5D.D5BC712E-ONC12585C7.00430794-C12585C7.00432E67@LocalDomain>
 <OF75D816C6.F1CD6CB2-ONC12585C3.0047C644-C12585C3.00484578@notes.na.collabserv.com>
 <CAKwvOdmmUFVRG53w68B2YaS22MMO1k+2yyaxO7QGqJnqEDKxug@mail.gmail.com>
 <CAKwvOdn+kdrXp3qn0sbpYzBG+wO0RRhS6UsM3JUMK8My08-uFg@mail.gmail.com>
 <OFF00E0E50.C2C52D87-ON002585C7.0043DE22-002585C7.0043EBBA@LocalDomain>
 <OFED0BC1CD.FBAECBF3-ON002585C7.0043F877-002585C7.0044C3BD@notes.na.collabserv.com>
 <CAKwvOdkZrqjju7AY+otVAfLcKg1icu5q7bix71DssHhC-oCNPg@mail.gmail.com>
X-KeepSent: C88B4942:6DF719A3-C12585E6:004B298C;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP7 Octobe4, 2013
X-LLNOutbound: False
X-Disclaimed: 1399
X-TNEFEvaluated: 1
Content-type: multipart/alternative; 
	Boundary="0__=4EBB0F75DFD8AF1C8f9e8a93df938690918c4EBB0F75DFD8AF1C"
Content-Disposition: inline
x-cbid: 20091713-8889-0000-0000-000003A45E64
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0; SC=0.4332;
 ST=0; TS=0; UL=0; ISC=; MB=0.000000
X-IBM-SpamModules-Versions: BY=3.00013850; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01436170; UDB=6.00771444; IPR=6.01218840;
 MB=3.00034104; MTD=3.00000008; XFM=3.00000015; UTC=2020-09-17 13:43:01
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-09-17 13:13:15 - 6.00011850
x-cbparentid: 20091713-8890-0000-0000-0000AD507C71
Message-Id: <OFC88B4942.6DF719A3-ONC12585E6.004B298C-C12585E6.004B52F2@notes.na.collabserv.com>
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-09-17_09:2020-09-16,2020-09-17 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
X-Original-Sender: ulrich.weigand@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=nd59CFT1;       spf=pass (google.com:
 domain of ulrich.weigand@de.ibm.com designates 148.163.158.5 as permitted
 sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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


--0__=4EBB0F75DFD8AF1C8f9e8a93df938690918c4EBB0F75DFD8AF1C
Content-type: text/plain; charset="UTF-8"


Nick Desaulniers <ndesaulniers@google.com> wrote on 16.09.2020 22:38:13:

> Joel notes that there's been patches submitted for BuildRoot for s/390
support!
>
https://github.com/ClangBuiltLinux/continuous-integration/issues/232#issuecomment-693255238
> Please pass along my sincere gratitude!

Ah, good that this worked out now!  Let us know if there are any further
issues.

Bye,
Ulrich

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/OFC88B4942.6DF719A3-ONC12585E6.004B298C-C12585E6.004B52F2%40notes.na.collabserv.com.

--0__=4EBB0F75DFD8AF1C8f9e8a93df938690918c4EBB0F75DFD8AF1C
Content-Transfer-Encoding: quoted-printable
Content-type: text/html; charset="UTF-8"
Content-Disposition: inline

<html><body><p><tt><font size=3D"2">Nick Desaulniers &lt;ndesaulniers@googl=
e.com&gt; wrote on 16.09.2020 22:38:13:<br><br>&gt; Joel notes that there's=
 been patches submitted for BuildRoot for s/390 support!</font></tt><br><tt=
><font size=3D"2">&gt; </font></tt><a href=3D"https://github.com/ClangBuilt=
Linux/continuous-integration/issues/232#issuecomment-693255238"><tt><font s=
ize=3D"2">https://github.com/ClangBuiltLinux/continuous-integration/issues/=
232#issuecomment-693255238</font></tt></a><br><tt><font size=3D"2">&gt; Ple=
ase pass along my sincere gratitude!<br></font></tt><br><tt><font size=3D"2=
">Ah, good that this worked out now! &nbsp;Let us know if there are any fur=
ther issues.</font></tt><br><br><tt><font size=3D"2">Bye,<br>Ulrich</font><=
/tt><BR>
</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/OFC88B4942.6DF719A3-ONC12585E6.004B298C-C12585=
E6.004B52F2%40notes.na.collabserv.com?utm_medium=3Demail&utm_source=3Dfoote=
r">https://groups.google.com/d/msgid/clang-built-linux/OFC88B4942.6DF719A3-=
ONC12585E6.004B298C-C12585E6.004B52F2%40notes.na.collabserv.com</a>.<br />

--0__=4EBB0F75DFD8AF1C8f9e8a93df938690918c4EBB0F75DFD8AF1C--

