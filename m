Return-Path: <clang-built-linux+bncBD66FMGZA4IKBGVAQIDBUBFLSN55A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED7033322A
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 01:04:49 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id n17sf7178987wrq.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 16:04:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615334689; cv=pass;
        d=google.com; s=arc-20160816;
        b=Df9LXn8gMdCSvahrKQGGq6SkOFnIAiqK6qYrleTlJEtbAJKV3+Eh4GiZYd4IqZzAnp
         dCt8sUo/Fp2W+ee/Eijw9MFTTGpAildouU5tsHparlrW1xDVrOy0M/zXzOv0EWEV4gqj
         kji3YgzIydKuOfcpUaPCjSDoeDH3cALXdd5C7ro4+gZInwvU39EBdy4DpEQj0h9/Ztx/
         Wte5z764hMwmRdaDecNpAUSSW8An7rXpfJE/ZDUe1BUQsEoS3SR1/Sm5wcwE1dikmXjb
         Ssps9dgZ7I5mUuU44YRDNGif0O1NecIjxZYhXC5vjxvDCezyFocK+zJ9Z+fRiTwsA0T8
         qutw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=DxZbyC/gsmhyPXJO6xLR6pVSPTp2BJjaRvzz1KVMHrg=;
        b=I6xwjMife+kLprYa58/axqHjqF3jRf6YAt6AOctX/57K9VGvG76V2Q6sgV8fsHp4/e
         LWBUzIWNK0DtDRmDjnd33ILFJ3NIagEDLx+5Vkp022MlxQUeyHYDWrDOFWtVShHR/Z2h
         uAENHcXKMxD9gUXKloRVBrZepdJ30FKtsoqztNtc+emBCPp4oCYS1mwAfrotwQ9AHduL
         e56lhhbqVA0rastmyFov03tk/sro4VnNivkbX1S79rh0BhmrP3rr4o7P+U5qHIyik46+
         JPWMb+A+Dq1Nfk3t2A4GwKdK7C/E/cTw89GaPiJdZw5w9KYktfiGeZj4uLnkAklJqkoR
         dKDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QE2go4sU;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DxZbyC/gsmhyPXJO6xLR6pVSPTp2BJjaRvzz1KVMHrg=;
        b=HcFTopG225RNF6cTx46Cue8Oa5FrU362/yXzXq71Dnk6gy1xhlvD2+NUGNh/ne8JC1
         E1yQQqkPVYemnCos637EQps/ih1zA73vJXaKGSlTuwzNWyT8cNkn49+E82NM0x0lRO1P
         uAqCd2AnDJY8RdfY89KnU/mWuXi49Yd4Jgwuer9r81PEKZJseuRac8aRiZxs0HPkZsLO
         MMMDxxgib9UuN/EBILKqmvkYymOE+K7lRUR/1w1IaBnVhuRG7P07fmpLkS1+P6B8BFGu
         3JYr3FVwwzA6wvHDoHE99SPW67A7cPlGdgzf9cJpyxM3Dy1mdIS7p6bE4dxN2xyuRxrT
         kEbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DxZbyC/gsmhyPXJO6xLR6pVSPTp2BJjaRvzz1KVMHrg=;
        b=IxF5eyKBn71JTt6vCJ2ANT2sOy3MvQbGey6ABbX7S4ptU9a3nYrThW4LTZyVTi+Apf
         XBPAB8cQdC7ggiiT4frs99DlTgp5JA9nALSE0WPdBs1GzbIfkXh6TIl6E7AKW2wlhoL2
         QhxdkeOEquc20mv6PqXJ8Ce4osWLHdrucwfrOd5RAaIOe9vi7vYJfLKNuWM0fPi4UxNV
         dti6BQJE/LoU+WDk9FG23FZLPZWR23dNTJNobZYQvJtOTOgCYHOBRMoccGHlSm5RN3iD
         8FhLLWe/DlbFYBIys17+P0CPRrkVbfSrKCIIq+1MfrOZvXOaVF8n4/sUQX3q9f6PCsHg
         L/ew==
X-Gm-Message-State: AOAM530flDryWfaQfhfIkkkcdREF3FtycSs6UAV1o7RtfVROxBC7vWEF
	vSdH168X1J0EBQTEX4VWRrs=
X-Google-Smtp-Source: ABdhPJzsC/JYn64I+eNn2mNAj5L/RS8mdzj2kJLne8DoWEZZbobqi2aRkshDhLWFN25/f28racPOTA==
X-Received: by 2002:adf:97d5:: with SMTP id t21mr389647wrb.139.1615334689055;
        Tue, 09 Mar 2021 16:04:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls407868wrd.0.gmail; Tue, 09 Mar
 2021 16:04:48 -0800 (PST)
X-Received: by 2002:adf:ef08:: with SMTP id e8mr440921wro.200.1615334688235;
        Tue, 09 Mar 2021 16:04:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615334688; cv=none;
        d=google.com; s=arc-20160816;
        b=XGcLmE4ik6HF7mCiPBF1DxxKm+MM2OMxOKMPKNltDZLmmAoq37fcd4WGkK63B6COed
         QmA9fCyOLQpjQT/H2Jr1Q4VVIE9Z3uqJnnapQL17OD3sZ3O3XqhNwTLU3380ybP2iHUX
         CqFJVo/WRqanHPA0KHfxNeGUIyQg9UrWB76u8CzqyjrSAyuAzBdIFy8R/xPCoKi6qma4
         Ui6I1oINsA3smC0tQi2gxB9wNyRKrU3Ordovi5gfcvBr1TJktP8sX9bbzqUquz4on/g2
         pnH3VOAMVjTkkk8T6E+vvt/7BIiatkRQccD4UtSgwVlDL5g3akUau7NDstr/mMYpxPCy
         Kt1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=n5ygj8g/y2cZK7IKUDbjtFK29FrRXFY5NGeCsnA1xPE=;
        b=uZswI3M1P95VSZbEIds/jY5d2AmXLvFvuxhdrlUIfqlAJt5JoeTjjzCkfElLhUTkNy
         OXzQJ5k5IX0WRhftFlS4nD65OTrdDG7AS7oQuTuF+oB9AcrAnUMw2VQs77/AvYDAmTBH
         bz3Pt5n5wPHOJXdG1O939nAnkrhIYuv7SQoaKIS+KKEwwVL09/bV6nTa7sqrz6kpll8V
         aNILewsgnLeNIU/XEq3UZnO6/j00f5p/d0N9s+Gu3VBY1kVkQVLt1ZjECywtrTjWBOC0
         gg0C2JBIBBKvgD6Y2gQcK7R8JaE8R4Uld38gzjlC0m0qgj02rA5tCik+U/zHGyuR2VdA
         FPuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QE2go4sU;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id t124si135230wmb.3.2021.03.09.16.04.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 16:04:48 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id p8so33191081ejb.10
        for <clang-built-linux@googlegroups.com>; Tue, 09 Mar 2021 16:04:48 -0800 (PST)
X-Received: by 2002:a17:906:1448:: with SMTP id q8mr586229ejc.449.1615334687678;
 Tue, 09 Mar 2021 16:04:47 -0800 (PST)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 9 Mar 2021 16:04:36 -0800
Message-ID: <CAGG=3QXktM25pby2H9hQMNYWS2kecmmSvPJa6xVf-kXVefKN5Q@mail.gmail.com>
Subject: News: Delayed Meet-Up
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>
Content-Type: multipart/alternative; boundary="00000000000040e96705bd236af7"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QE2go4sU;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as
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

--00000000000040e96705bd236af7
Content-Type: text/plain; charset="UTF-8"

Hey!

All y'all might be wondering why there hasn't been any news with regards to
the Clang-Built Linux Meet Up. That's because...there isn't any. :-( The
COVID-19 restrictions means that we can't meet in person, which for me is
the main reason to have a meet-up. (Sharing beer is a close second.) Now
that there's a vaccine available, there's hope that the restrictions will
be relaxed enough so that we can meet in the near future. I'll send out
updates once things change. I *hope* it can happen this year still.

Please respond with any suggestions and/or comments you might have!

Share and enjoy!
-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXktM25pby2H9hQMNYWS2kecmmSvPJa6xVf-kXVefKN5Q%40mail.gmail.com.

--00000000000040e96705bd236af7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,sa=
ns-serif">Hey!</div><div class=3D"gmail_default" style=3D"font-family:arial=
,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ar=
ial,sans-serif">All y&#39;all might be wondering why there hasn&#39;t been =
any news with regards to the Clang-Built Linux Meet Up. That&#39;s because.=
..there isn&#39;t any. :-( The COVID-19 restrictions means that we can&#39;=
t meet in person, which for me is the main reason to have a meet-up. (Shari=
ng beer is a close second.) Now that there&#39;s a vaccine available, there=
&#39;s hope that the restrictions will be relaxed enough so that we can mee=
t in the near future. I&#39;ll send out updates once things=C2=A0change. I =
*hope* it can happen this year still.</div><div class=3D"gmail_default" sty=
le=3D"font-family:arial,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:arial,sans-serif">Please respond with any suggestions =
and/or comments you might have!</div><div class=3D"gmail_default" style=3D"=
font-family:arial,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:arial,sans-serif">Share and enjoy!</div><div class=3D"gmail=
_default" style=3D"font-family:arial,sans-serif">-bw</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QXktM25pby2H9hQMNYWS2kecmmSvPJa6xVf-kX=
VefKN5Q%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXktM25pby2H9hQMNYWS2kecm=
mSvPJa6xVf-kXVefKN5Q%40mail.gmail.com</a>.<br />

--00000000000040e96705bd236af7--
