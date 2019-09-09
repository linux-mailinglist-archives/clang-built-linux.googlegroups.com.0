Return-Path: <clang-built-linux+bncBD66FMGZA4IPNA6Y5MCRUBHNCILUS@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6609CAD40A
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 09:40:39 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id n62sf10132427ybg.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 00:40:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568014838; cv=pass;
        d=google.com; s=arc-20160816;
        b=xPtorQqRRD57uS1htlKgHJL3R0FFSjViaYINYMuB+1pzHVGvQhols/9zgTSYrYs6TW
         yNyM0dRf0/94CV60yOXMoNODSudtdT404fv5fqEgppkCPiBSKGOiwRhlU0qvLzJv6/yL
         W+xFfWo5yXslqyH3UnbpBHtl0LvPzViPf3mMrXTqvR7br/WQhzX690yCx9gPyEtHk8tv
         NoDjy5bS9iLf3X01FsyiMQJDQZHmtQrijGmzbdvaunyzOuNvRvGCw8ejQxxiS8oruf+C
         Goi7Rg+JCZ1SKbE2kvQ/Js1JhBP1fyftMU7tocyN7ukdfhjVsu/ckPWWHFTshVDj09jb
         Uayw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=VZEgzTW/mOeZVGcHQQNHu8ERZNCpXJthLlXHLFRm9B8=;
        b=PJ05vXnqQXerAUHnqR1tDBqGdyEZlD7MyW77Cu/eGMSqo9ZD1ZTs9prd6rKlojQgGn
         udokbTRC7UlLSPaOjz18wo6pUVCjTQYiGZTia/VMeT4K3MlS7r4FJBPsRUjKOxb6gvDO
         c1ZO0NxSah+1xgNwcOnEG/H8sazxF23JrHYcucioPbFtb4K3Um9l0ZXJwk3zF5NPVlE3
         1O+YSkfOx8gSqHCN93yTDu9J0Y4xieV3+rIzANx6FwMPNmQ+/PLkj7BddAtnlpYfncBb
         MYVHE5rTJrhWHjZaRbpCHk3n1wt3gtndRagmmq3cQiIFRGwonTLp9mtKpXcJVFEZgKge
         U5Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A8ki80iC;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a33 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VZEgzTW/mOeZVGcHQQNHu8ERZNCpXJthLlXHLFRm9B8=;
        b=WZcqhYUOVaguFJc5frFnvmNUboEDOTtCZUwl8RlD3mpbNbo3g8KoXjUcLMb7eUYw+M
         B4mPGKGg/7NNvNXI+/t8UA5YalZnfUAk29fELFhGL8PCwTcSmGxBA/YrjCaIrslI9eZ2
         7T9qNiWTbElJ+abuOtrsW90qaTj6jtVrUWXPodDyQnak5GPSUsJcK+ge2x0XhVzw7L12
         NTPRwECbR7uwyQBvy5t/ZQu5fLbRMCdgpWacPiK9uGfIWqJXP8SE/ShwwlphZv6NTWHt
         ryAAqfU49hDkx+eq4feiQ49Ev9miUxWdQlyxxpwhelle7VK/OooS70JkpCas91J3UaAz
         ZBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VZEgzTW/mOeZVGcHQQNHu8ERZNCpXJthLlXHLFRm9B8=;
        b=VuK5KhGMHu89OO2spkdp7kI3mkzXHJMGAMnONMock1PkFkUCR3FfCYw+7SZFRcFkYv
         IDKYlavTolCNX+NOCTstjTA2e5v3O9xC707xuJSyiPOyy9plFyZqq7k/YCOjIYhp1qZv
         tzi3kQ6kIJO1Hky70uxYLnmlIyl3Nibdydy5WBIchS1QZi0rtOjXjpbT38Q1nwYQexjR
         /cXhhMSGKgwEiA1cKpIe4sbHhhDgHQsdAuOvFRJ80GTeNHEiKvVsplRt8OGs9AW4pEcv
         1aPSP9VBY062VEnMMLJAvebki8LMci1CtfZ63q2Mb8Oiba9d2mvBPVhhTrm4aiq/4Q+n
         H3ag==
X-Gm-Message-State: APjAAAVSP0Dw9pkscty9d6y+7bPqn43dSissTHCb/iaYtmJrBuhFPP9Z
	hUTa/q1UyTx2qiQWRpLawdI=
X-Google-Smtp-Source: APXvYqwUqD6XITDGFHDOxoyb2gbLrQQhyCjIs1fhm5k7WifflTCkBj7p4NBnYmAiu8JHCtKsWX/8RA==
X-Received: by 2002:a25:838a:: with SMTP id t10mr5964567ybk.414.1568014838224;
        Mon, 09 Sep 2019 00:40:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:e81:: with SMTP id 123ls2084138ywo.15.gmail; Mon, 09 Sep
 2019 00:40:37 -0700 (PDT)
X-Received: by 2002:a81:3a02:: with SMTP id h2mr14866471ywa.448.1568014837682;
        Mon, 09 Sep 2019 00:40:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568014837; cv=none;
        d=google.com; s=arc-20160816;
        b=MigZdWL2ct8DT57M880Mj62IBo0eR47PgVjeeVLaJWwWEEfWUQPsWp/o+iZahMkint
         0rwzFUE0fB2PrCAGS/TOlhLavUUZzkO0xv1Gmzm8AS8+Z/Ul4CYBVPcPQn0h8bwvvsDN
         61cZbOCUy2byudRe8hrj63ZqB+2JgwUf3HmoP0lSglDXAHBMT/qlm8uISd2ZgPjrOwbe
         KwVgWYVBjIuvkyRZhMZU2buiFRFZOo7zWbxK7xm1E0qfjSWN+0E9WD4Xm5j+ljbt2doC
         9ImTOpri5SO+lOu8se1LSb+bi6p0NHzDgnbrxZXa91PxHIB1czmWX3D4qGj6NY7Qf7OC
         o65A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=3R3VeskBNE3u/6gVn7QLgmPJmgWMx1a51TbnkLxQJRg=;
        b=O7HA8XqoIxYGcgTUg/jtunmLI8nsIv5aTWkOLnf/nJxnQ3QcUArqe7BNuElo9C3TGv
         Py1zswtn2JyA8lXAChrOdzbTYrnmvIeClpIko/IOeMqBDIRrDE7C8O0V3/HYAWVtTPA9
         b5ggz6JQP8japdlbWHJhrwl7tagUXq1vylYgRv9cN7twdEE/4OjwkKlXcI/TGCwx4fo8
         NsQWqryEp7cIdQcYfvZfhvRC/fDu4xZXjjWLiXRQz3OeQ9CMClLrI8sYlqin/JSQq3Xa
         CF1Cd79CzD4L+RD3DvPHGmEtIsaTU6Y5cBVjNOSq8x6ao9WVbmatpfcExaeQQ46rI4Fy
         dobw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A8ki80iC;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a33 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com. [2607:f8b0:4864:20::a33])
        by gmr-mx.google.com with ESMTPS id c76si715483ybf.3.2019.09.09.00.40.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 00:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a33 as permitted sender) client-ip=2607:f8b0:4864:20::a33;
Received: by mail-vk1-xa33.google.com with SMTP id v78so2508288vke.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 00:40:37 -0700 (PDT)
X-Received: by 2002:ac5:c934:: with SMTP id u20mr9983977vkl.27.1568014836651;
 Mon, 09 Sep 2019 00:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000429e9d05915ce913@google.com>
In-Reply-To: <000000000000429e9d05915ce913@google.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Sep 2019 00:40:25 -0700
Message-ID: <CAGG=3QU904+7+=oC5kpgmpaaZVnij+Mc98LXWB6KFGTN7Z_48Q@mail.gmail.com>
Subject: Re: Clang-Built Linux Meet-Up
To: clang-built-linux@googlegroups.com, 
	clang linux fellowship <clang-linux-fellowship@google.com>
Content-Type: multipart/alternative; boundary="00000000000057e489059219e783"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A8ki80iC;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::a33 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--00000000000057e489059219e783
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone!

We got some responses to the survey, but if you haven't filled it out yet
please do. You may use the "If you're interested in giving a
presentation..." field for alternative dates if none of the ones listed
work for you. Let's try to nail down a date within the next few weeks. :-)

Share and enjoy!
-bw

On Fri, Aug 30, 2019 at 3:11 PM <morbo@google.com> wrote:

> [image: Google Forms]
> Having trouble viewing or submitting this form?
> Fill out in Google Forms
> <https://docs.google.com/forms/d/e/1FAIpQLSeW7HRyd7AnC-CpDy0wO11PXt6z5fMQ=
SB_F9_tCBgMLooEPBQ/viewform?vc=3D0&c=3D0&w=3D1&usp=3Dmail_form_link>
>
> The Clang-Built Meet up is back on! We're planning on having it during th=
e
> first part of next year. This farm is to help pick a date so that everyon=
e
> who wants to attend can attend. The dates that we list here aren't the on=
ly
> possible dates. If none of these dates work for you, please let us know.
>
> Share and enjoy!
> -bw
> Clang-Built Linux Meet-Up
> <https://docs.google.com/forms/d/e/1FAIpQLSeW7HRyd7AnC-CpDy0wO11PXt6z5fMQ=
SB_F9_tCBgMLooEPBQ/viewform?vc=3D0&c=3D0&w=3D1&usp=3Dmail_form_link>
> Where: Google Campus, Z=C3=BCrich, Switzerland
> When: That's what this survey is to determine...
>
>
>    Name *
>    Email *
>    What weekend is best for you? *
>    - 24-26 January 2020
>       - 7-9 February 2020
>       - 14-16 February 2020
>       - None of these dates work for me
>       - Any of these dates work for me
>    If you're interested in giving a presentation, please give a brief
>    synopsis.
>    Never submit passwords through Google Forms.
>
> Powered by
> [image: Google Forms]
>
> <https://www.google.com/forms/about/?utm_source=3Dproduct&utm_medium=3Dfo=
rms_logo&utm_campaign=3Dforms>
> This form was created inside of Google.com.
> Google <http://www.google.com> - Privacy & Terms
> <http://www.google.com/policies> - About Google
> <https://www.google.com/about>
> Create your own Google Form
> <https://docs.google.com/forms?usp=3Dmail_form_link>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAGG%3D3QU904%2B7%2B%3DoC5kpgmpaaZVnij%2BMc98LXWB6KFGTN7Z=
_48Q%40mail.gmail.com.

--00000000000057e489059219e783
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone!<div><br></div><div>We got some responses to t=
he survey, but if you haven&#39;t filled it out yet please do. You may use =
the &quot;If you&#39;re interested in giving a presentation...&quot; field =
for alternative dates if none of the ones listed work for you. Let&#39;s tr=
y to nail down a date within the next few weeks. :-)<br></div><div><br></di=
v><div>Share and enjoy!</div><div><div>-bw</div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 30, 2019=
 at 3:11 PM &lt;<a href=3D"mailto:morbo@google.com">morbo@google.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div st=
yle=3D"font-family:Roboto,Helvetica,Arial,sans-serif;margin:0px;padding:0px=
;height:100%;width:100%"><table border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" style=3D"background-color:rgb(95,42,4)" width=3D"100%"><tbody><tr he=
ight=3D"64px"><td style=3D"padding-left:24px"><img alt=3D"Google Forms" hei=
ght=3D"26px" style=3D"display: inline-block; margin: 0px; vertical-align: m=
iddle;" width=3D"143px" src=3D"https://www.gstatic.com/docs/forms/google_fo=
rms_logo_lockup_white_2x.png"></td></tr></tbody></table><div style=3D"paddi=
ng:24px;background-color:rgb(248,207,184)"><table align=3D"center" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"max-width:672px;min-wid=
th:154px" width=3D"100%"><tbody><tr><td style=3D"font-size:13px;line-height=
:18px;color:rgb(66,66,66);font-weight:700">Having trouble viewing or submit=
ting this form?</td></tr><tr height=3D"8px"><td></td></tr><tr><td><table bo=
rder=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tbody><tr><t=
d><a href=3D"https://docs.google.com/forms/d/e/1FAIpQLSeW7HRyd7AnC-CpDy0wO1=
1PXt6z5fMQSB_F9_tCBgMLooEPBQ/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;usp=3D=
mail_form_link" style=3D"border-radius:3px;box-sizing:border-box;display:in=
line-block;font-size:13px;font-weight:700;height:40px;line-height:40px;padd=
ing:0px 24px;text-align:center;text-decoration:none;text-transform:uppercas=
e;vertical-align:middle;color:rgb(255,255,255);background-color:rgb(95,42,4=
)" rel=3D"noopener" target=3D"_blank">Fill out in Google Forms</a></td></tr=
></tbody></table></td></tr><tr height=3D"24px"><td></td></tr></tbody></tabl=
e><div align=3D"center" style=3D"background-color:rgb(255,255,255);border-b=
ottom:1px solid rgb(224,224,224);margin:0px auto;max-width:624px;min-width:=
154px;padding:0px 24px"><table align=3D"center" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"background-color:rgb(255,255,255)" width=3D"100%"><tbody>=
<tr height=3D"24px"><td></td></tr><tr><td><span style=3D"display:table-cell=
;vertical-align:top;font-size:13px;line-height:18px;color:rgb(66,66,66)" di=
r=3D"auto">The Clang-Built Meet up is back on! We&#39;re planning on having=
 it during the first part of next year. This farm is to help pick a date so=
 that everyone who wants to attend can attend. The dates that we list here =
aren&#39;t the only possible dates. If none of these dates work for you, pl=
ease let us know.<br><br>Share and enjoy!<br>-bw</span></td></tr><tr height=
=3D"20px"><td></td></tr><tr style=3D"font-size:20px;line-height:24px"><td d=
ir=3D"auto"><a href=3D"https://docs.google.com/forms/d/e/1FAIpQLSeW7HRyd7An=
C-CpDy0wO11PXt6z5fMQSB_F9_tCBgMLooEPBQ/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&=
amp;usp=3Dmail_form_link" style=3D"color:rgb(95,42,4);text-decoration:none;=
vertical-align:middle;font-weight:500" target=3D"_blank">Clang-Built Linux =
Meet-Up</a><div></div></td></tr><tr height=3D"16px"></tr><tr><td style=3D"d=
isplay:table-cell;vertical-align:top;font-size:13px;line-height:18px;color:=
rgb(66,66,66)" dir=3D"auto">Where: Google Campus, Z=C3=BCrich, Switzerland<=
br>When: That&#39;s what this survey is to determine...</td></tr><tr height=
=3D"24px"></tr><tr><td><div><form action=3D"https://docs.google.com/forms/u=
/1/d/e/1FAIpQLSeW7HRyd7AnC-CpDy0wO11PXt6z5fMQSB_F9_tCBgMLooEPBQ/formRespons=
e" method=3D"POST" id=3D"gmail-m_-7567286796871933123ss-form"><ol style=3D"=
padding-left:0px;list-style-type:none">

<div>
<div dir=3D"auto" style=3D"margin:12px 0px"><div style=3D"margin-bottom:1.5=
em;vertical-align:middle;margin-left:0px;margin-top:0px;max-width:100%">
<label for=3D"m_-7567286796871933123entry_2092238618"><div style=3D"display=
:block;font-weight:bold;margin-top:0.83em;margin-bottom:0.83em">Name
<label for=3D"m_-7567286796871933123itemView.getDomIdToLabel()"></label>
<span style=3D"color:rgb(196,59,29)">*</span></div>
<div dir=3D"auto" style=3D"display:block;margin:0.1em 0px 0.25em;color:rgb(=
102,102,102)"></div></label>

<input type=3D"text" name=3D"entry.2092238618" value=3D"" id=3D"gmail-m_-75=
67286796871933123entry_2092238618" dir=3D"auto" title=3D"">


</div></div></div> <div>
<div dir=3D"auto" style=3D"margin:12px 0px"><div style=3D"margin-bottom:1.5=
em;vertical-align:middle;margin-left:0px;margin-top:0px;max-width:100%">
<label for=3D"m_-7567286796871933123entry_1556369182"><div style=3D"display=
:block;font-weight:bold;margin-top:0.83em;margin-bottom:0.83em">Email
<label for=3D"m_-7567286796871933123itemView.getDomIdToLabel()"></label>
<span style=3D"color:rgb(196,59,29)">*</span></div>
<div dir=3D"auto" style=3D"display:block;margin:0.1em 0px 0.25em;color:rgb(=
102,102,102)"></div></label>

<input type=3D"email" name=3D"entry.1556369182" value=3D"" id=3D"gmail-m_-7=
567286796871933123entry_1556369182" dir=3D"auto" title=3D"Must be a valid e=
mail address">


</div></div></div> <div>
<div dir=3D"auto" style=3D"margin:12px 0px"><div style=3D"margin-bottom:1.5=
em;vertical-align:middle;margin-left:0px;margin-top:0px;max-width:100%">
<label for=3D"m_-7567286796871933123entry_1212825914"><div style=3D"display=
:block;font-weight:bold;margin-top:0.83em;margin-bottom:0.83em">What weeken=
d is best for you?
<label for=3D"m_-7567286796871933123itemView.getDomIdToLabel()"></label>
<span style=3D"color:rgb(196,59,29)">*</span></div>
<div dir=3D"auto" style=3D"display:block;margin:0.1em 0px 0.25em;color:rgb(=
102,102,102)"></div></label>


<ul style=3D"list-style:none;padding:0px;margin:0.5em 0px 0px"><li style=3D=
"margin:0px;line-height:1.3em;padding-bottom:0.5em">
<label><span style=3D"display:inline-block"><input type=3D"radio" name=3D"e=
ntry.1753222212" value=3D"24-26 January 2020" id=3D"gmail-m_-75672867968719=
33123group_1753222212_1"></span>
<span>24-26 January 2020</span>
</label></li> <li style=3D"margin:0px;line-height:1.3em;padding-bottom:0.5e=
m">
<label><span style=3D"display:inline-block"><input type=3D"radio" name=3D"e=
ntry.1753222212" value=3D"7-9 February 2020" id=3D"gmail-m_-756728679687193=
3123group_1753222212_2"></span>
<span>7-9 February 2020</span>
</label></li> <li style=3D"margin:0px;line-height:1.3em;padding-bottom:0.5e=
m">
<label><span style=3D"display:inline-block"><input type=3D"radio" name=3D"e=
ntry.1753222212" value=3D"14-16 February 2020" id=3D"gmail-m_-7567286796871=
933123group_1753222212_3"></span>
<span>14-16 February 2020</span>
</label></li> <li style=3D"margin:0px;line-height:1.3em;padding-bottom:0.5e=
m">
<label><span style=3D"display:inline-block"><input type=3D"radio" name=3D"e=
ntry.1753222212" value=3D"None of these dates work for me" id=3D"gmail-m_-7=
567286796871933123group_1753222212_4"></span>
<span>None of these dates work for me</span>
</label></li> <li style=3D"margin:0px;line-height:1.3em;padding-bottom:0.5e=
m">
<label><span style=3D"display:inline-block"><input type=3D"radio" name=3D"e=
ntry.1753222212" value=3D"Any of these dates work for me" id=3D"gmail-m_-75=
67286796871933123group_1753222212_5"></span>
<span>Any of these dates work for me</span>
</label></li></ul>

</div></div></div> <div>
<div dir=3D"auto" style=3D"margin:12px 0px"><div style=3D"margin-bottom:1.5=
em;vertical-align:middle;margin-left:0px;margin-top:0px;max-width:100%">
<label for=3D"m_-7567286796871933123entry_1717970296"><div style=3D"display=
:block;font-weight:bold;margin-top:0.83em;margin-bottom:0.83em">If you&#39;=
re interested in giving a presentation, please give a brief synopsis.
</div>
<div dir=3D"auto" style=3D"display:block;margin:0.1em 0px 0.25em;color:rgb(=
102,102,102)"></div></label>

<textarea name=3D"entry.1717970296" rows=3D"8" cols=3D"0" id=3D"gmail-m_-75=
67286796871933123entry_1717970296" dir=3D"auto" style=3D"width:70%"></texta=
rea>


</div></div></div>
<input type=3D"hidden" name=3D"draftResponse" value=3D"[null,null,&quot;382=
661078366218757&quot;]">
<input type=3D"hidden" name=3D"pageHistory" value=3D"0">

<input type=3D"hidden" name=3D"usp" value=3D"mail_form_submit">

<input type=3D"hidden" name=3D"fbzx" value=3D"382661078366218757">
<div style=3D"margin-bottom:4px" dir=3D"ltr"><label for=3D"m_-7567286796871=
933123emailReceipt" style=3D"display:inline"></label></div>
<div style=3D"margin:12px 0px"><table id=3D"gmail-m_-7567286796871933123nav=
igation-table"><tbody><tr><td id=3D"gmail-m_-7567286796871933123navigation-=
buttons" dir=3D"ltr" style=3D"margin-bottom:1.5em;vertical-align:middle;mar=
gin-left:0px;margin-top:0px;max-width:100%;display:inline-block">
<input type=3D"submit" name=3D"submit" value=3D"Submit" id=3D"gmail-m_-7567=
286796871933123ss-submit">
<div style=3D"color:rgb(102,102,102)">Never submit passwords through Google=
 Forms.</div></td>
</tr></tbody></table></div></ol></form></div>
<div><div></div>
<div><div></div>
<div dir=3D"ltr"><div style=3D"margin-top:2em"><span>Powered by</span>
<a href=3D"https://www.google.com/forms/about/?utm_source=3Dproduct&amp;utm=
_medium=3Dforms_logo&amp;utm_campaign=3Dforms" target=3D"_blank"><div><img =
src=3D"https://ssl.gstatic.com/docs/forms/forms_logo_2_small_dark_2x.png" h=
eight=3D"21px" width=3D"108px" alt=3D"Google Forms"></div></a></div>
<div style=3D"color:rgb(119,119,119);font-size:11px;margin-top:1.5em"><span=
>This form was created inside of Google.com.</span>
<br>
<a href=3D"http://www.google.com" target=3D"_blank">Google</a>
-
<a href=3D"http://www.google.com/policies" target=3D"_blank">Privacy &amp; =
Terms</a>
-
<a href=3D"https://www.google.com/about" target=3D"_blank">About Google</a>=
</div></div></div></div>
</td></tr><tr height=3D"24px"></tr></tbody></table></div><table align=3D"ce=
nter" cellpadding=3D"0" cellspacing=3D"0" style=3D"max-width:672px;min-widt=
h:154px" width=3D"100%"><tbody><tr height=3D"24px"><td></td></tr><tr><td><a=
 href=3D"https://docs.google.com/forms?usp=3Dmail_form_link" style=3D"color=
:rgb(66,66,66);font-size:13px" target=3D"_blank">Create your own Google For=
m</a></td></tr></tbody></table></div></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QU904%2B7%2B%3DoC5kpgmpaaZVnij%2BMc98L=
XWB6KFGTN7Z_48Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">ht=
tps://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QU904%2B7%2B%3DoC=
5kpgmpaaZVnij%2BMc98LXWB6KFGTN7Z_48Q%40mail.gmail.com</a>.<br />

--00000000000057e489059219e783--
