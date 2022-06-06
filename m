Return-Path: <clang-built-linux+bncBDG4LI57R4KBBTO27GKAMGQELV4MWZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1965B53F16E
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jun 2022 23:10:39 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 10-20020a250d0a000000b0065ca0e7be90sf13425238ybn.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jun 2022 14:10:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654549838; cv=pass;
        d=google.com; s=arc-20160816;
        b=HJ0GKdnvywaHmxJevAkxIOs9Bgn0ot4w91o1dsod9C/50KxDe36pLTgaPhFxkm7VYv
         9raFqQzZXk8PLUjloHh/Ll1YxmQS9tiTodW/BLcuBT+8KjQ8gTUS6Ue603pRmT9VC1zk
         Y5BDsjDDGKcenAkRUr/Qv1oO4JgNJewqTVmINvGNWBarhaGnO7alhkQRMYiklr/6UjVm
         iJWPIewspWdi+AircohHZKqXPc76At505szZddqElY2YWqFUwHhRRQgJvpOhN6xYkjkY
         nixGbnsVu8+fv3VLTykUrPM2xmY8fp7bldN6g8KE7vEKCyq/K+qNy4Qc3jLNcA8eOu7+
         ySEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=5pCf8pgmKaS7smX0sbjN4DOfoBTjtwNlkNsbgNJLd3c=;
        b=v+yHCOeXXQgq1uegI0gttWGyiah+UIT5vZ0i/QCAcznWLtQ1pfbVDW4GYIjKjry4Ib
         rlLQhuUfVvny5Of3S8cHioH31GVibbJ5L/X/X9hDztJ2CIKKmqcSPbrC0K1DdHMa0gDD
         wwyAeV1hA5cPw7aIkS8xI7CyWWHzv56o5OnrookXsw7C1FM/1iKpeXrnX0mpNdOb3ZqK
         roRY+NRfoZ6a7AwuIkiwNscN4dvMloWzEBcLGYbGgHefdj3rHTcyni8TiV6AGtJiwz3/
         ot3ZUP+YDC5Th1ZpYzuthnePvjzd56ZB/MZanz4lpZqCLcH5JlFcRrnSwAxnzJFN1eyi
         f7MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZWa1qUzX;
       spf=pass (google.com: domain of elizabethm356876@gmail.com designates 2607:f8b0:4864:20::112c as permitted sender) smtp.mailfrom=elizabethm356876@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5pCf8pgmKaS7smX0sbjN4DOfoBTjtwNlkNsbgNJLd3c=;
        b=QO8LjmgjdbVmpLUm36x/conXg9MZd0sPfD227ZCFtfipUaXcmvXgMFvX9se8EiNY+V
         CnNojugpVeZx4QmMJ+SB92GsadFOU2qIwGjuiPTQqr7lyq9ckSeejShr6y1InA4clJWO
         z1dYcmYXv5HuF3xgqwtYFNEPT7qebCVvvjCqH6JA1VJrwHypfF5Q2/DknJbSpDXlHgCR
         nFZtVsR3/TqJPTJ9flmN5nj90yhotLNpbBZ7ciqxs1LS2Fkj9ttYXe+T8I8TsI95UX1/
         ATvp3bXR6WCxXnxdQxSOJguYFoJGSpBb4SqydvG0MNlpuLE7cb3lFrGmbi/dWhAQclU2
         Tl3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5pCf8pgmKaS7smX0sbjN4DOfoBTjtwNlkNsbgNJLd3c=;
        b=NAjdxJpgQrKK8DjOjDrbuJ5BXNy5sA8XiYH7wX3npLBWjUC1nFH+uXUdnGKBv2dTP5
         ybfDHdTzZx5klglIgdso3WLBF8DPfSFA9dcUDm8qXfI3wyKgLUmK7rE4v95cF2GS0R0b
         ZaGWc2Y6eSBFPQ4Nu/q6KlafN4UXiqbd8QFNYonJ3TaEoDo215WG9qyWIwxUiuYElc06
         cz8C2ok7rXOs6WzBiVVpkFxcrSzZE6u2oN/xxfBXoGAaAyESBSnZNHF8vDza61OMQXle
         ygluAW0J47BYSEFWNg2ZALecUstNuwKGNlbRgIq3ldpmWZAOKONQQkVd8HDpLLu+yznm
         sZbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5pCf8pgmKaS7smX0sbjN4DOfoBTjtwNlkNsbgNJLd3c=;
        b=4nvly/RAGwR+0mrZttl8Lc9GRMLd8Bsi0nYG01yR0csdMRDFuTEeVep9oA+TLP1Kwu
         flzHRzzuzd/UM77NAk3jzfNndpDm1ckUNR00laXBYMfdryWUnJ5EwuL7bOSIBKbvIei5
         cWL5SS1hoXyXhCX3OmgKSsT7acGDtIbuIEZuV1F13WfFea2A5D1dR4Fa3+QhAOw/3tWL
         zHImDNWBcT8aJoSQPNfZJeXfcWL1GxeDAD6xt277RxhAXsap9BYiZ08RSbb+JZdNeTT/
         4IVyxesEELFHh220/Dv3binGBNxh7cSj814EH0wKCF/DNH+rxGqitFs/TseplUMULVdD
         10Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hOxYz/28m5RTzsssndRDL45IRSPk8gsLtDcF50hUud+DbxfLM
	EePxQSjjmBGZiUiNdPiV7JU=
X-Google-Smtp-Source: ABdhPJxL9l5cIaaBiLgbr3o3HVcbG/BpQIi1YsHoKzT+DJfh6lUYbnz0phW4R3sQ5f9nF+NM61DyzQ==
X-Received: by 2002:a25:6557:0:b0:663:3af2:81fa with SMTP id z84-20020a256557000000b006633af281famr13876126ybb.506.1654549837749;
        Mon, 06 Jun 2022 14:10:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:1001:b0:64a:f1d8:396c with SMTP id
 w1-20020a056902100100b0064af1d8396cls2105254ybt.1.gmail; Mon, 06 Jun 2022
 14:10:37 -0700 (PDT)
X-Received: by 2002:a25:6508:0:b0:663:bbd0:34e4 with SMTP id z8-20020a256508000000b00663bbd034e4mr3931393ybb.274.1654549837254;
        Mon, 06 Jun 2022 14:10:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654549837; cv=none;
        d=google.com; s=arc-20160816;
        b=DR7NZ7z8VGcwbC7DOQzzgl2a4rGdV68lK/hdF64X74159r+iZ3yrrMikBaBKDW2sC6
         T3ABXC5J5/iSzlMLxmRAffjINlOPh9u+jNG3NcAH4SPZpN5MWbKHSHpPzf7m8acpzH40
         tin4vBl5fMGHNHxmkFdvnjE9YAAuo5vTjY08BOggc/vHun1AxkmFPhdZtGBM1t/MdU/Z
         5yg7GowD9HHBqn8MSTwvWJ11uf8ZZtIu9N38PUnNUan208LA8pvjQi4llNpcjIYrXZKl
         2AkZkRsKXEZ6bmxBeRAbailulElvDc8A7RL8iDLjdSI0vbFoXFBL53NaV0+X7TqIkUUi
         MGPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=vxBlSy+xqG0aMv+aWwiFtHEoxK+I74dSgYxTnS9Cd9k=;
        b=Pjd1S2FI1RUmjBFiBLnvW/+Ff9iaunz0bcWTOPiANp+dpVUrciwnKjGiKNBhJGilBa
         yzkKKvMHVY3Nkby4q/QguS2hML8z9IYOPZB6DUmb1T0iCVHj1Wyy4iYXRbn4ou/QNR5g
         egNlGEtOauDLTUZuy/+zlwJRV2UIH0ge+Aprps1gv5lMBABBlJDFny2jtrMgsyhcxJw3
         JLvHwVz1u/hz9UIna1XkfFTihSS2xlNqJwl7+61cLarlc3H/zVb5a0BRCFB99ufPKPRP
         bvMcVA45QhH8yDZwe2eTCWV6frIQjoHZiGbTajeI2IuQg8k22EI+k3OWhQC1yH+s/PPD
         tLMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZWa1qUzX;
       spf=pass (google.com: domain of elizabethm356876@gmail.com designates 2607:f8b0:4864:20::112c as permitted sender) smtp.mailfrom=elizabethm356876@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com. [2607:f8b0:4864:20::112c])
        by gmr-mx.google.com with ESMTPS id a9-20020a056902144900b0065c507e98c6si914846ybv.0.2022.06.06.14.10.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 14:10:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of elizabethm356876@gmail.com designates 2607:f8b0:4864:20::112c as permitted sender) client-ip=2607:f8b0:4864:20::112c;
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-31332df12a6so8114327b3.4
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jun 2022 14:10:37 -0700 (PDT)
X-Received: by 2002:a0d:d416:0:b0:30c:15f1:64d6 with SMTP id
 w22-20020a0dd416000000b0030c15f164d6mr28643232ywd.394.1654549837056; Mon, 06
 Jun 2022 14:10:37 -0700 (PDT)
MIME-Version: 1.0
Reply-To: elizabethmark12022@gmail.com
From: Elizabeth Mark <elizabethmark12022@gmail.com>
Date: Tue, 7 Jun 2022 05:10:26 +0800
Message-ID: <CADtbehQgFJ94d95a4eKN6wnfBkc5BXD8_ut9e9AS0OfxX_g4yw@mail.gmail.com>
Subject: =?UTF-8?B?0JfQtNGA0LDQstC10LnRgtC1?=
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000004d102005e0cde7ba"
X-Original-Sender: elizabethmark12022@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ZWa1qUzX;       spf=pass
 (google.com: domain of elizabethm356876@gmail.com designates
 2607:f8b0:4864:20::112c as permitted sender) smtp.mailfrom=elizabethm356876@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000004d102005e0cde7ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

INCX0LTRgNCw0LLQtdC50YLQtQ0KICDQnNC+0LvRjywg0YHQutGK0L/QuCwg0LzQvtC20LXRgtC1
INC70Lgg0LTQsCDQvNC4INC60LDQttC10YLQtSDQv9GA0LjRh9C40L3QsNGC0LAsINC/0L7RgNCw
0LTQuCDQutC+0Y/RgtC+INC90LUg0YHRgtC1DQrQvtGC0LPQvtCy0L7RgNC40LvQuCDQvdCwINGB
0YrQvtCx0YnQtdC90LjQtdGC0L4g0LzQuA0KICDQktCw0YjQuNGP0YIg0YHQtdGA0LbQsNC90YIg
0JXQu9C40LfQsNCx0LXRgtCwINCc0LDRgNC6DQpIZWxsbw0KIFBsZWFzZSBkZWFyIGNhbiB5b3Ug
bGV0IG1lIGtub3cgdGhlIHJlYXNvbiB3aHkgeW91IGhhdmUgbm90IHJlcGx5IG15DQptZXNzYWdl
DQogWW91ciBzZXJnZWFudCBFbGlzYWJldHRhIE1hcmsNCg0KLS0gCllvdSByZWNlaXZlZCB0aGlz
IG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMg
IkNsYW5nIEJ1aWx0IExpbnV4IiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3Vw
IGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBjbGFu
Zy1idWlsdC1saW51eCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMg
ZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9t
c2dpZC9jbGFuZy1idWlsdC1saW51eC9DQUR0YmVoUWdGSjk0ZDk1YTRlS042d25mQmtjNUJYRDhf
dXQ5ZTlBUzBPZnhYX2c0eXclNDBtYWlsLmdtYWlsLmNvbS4K
--0000000000004d102005e0cde7ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+wqDQl9C00YDQsNCy0LXQudGC0LU8YnI+wqAg0JzQvtC70Y8sINGB0LrR
itC/0LgsINC80L7QttC10YLQtSDQu9C4INC00LAg0LzQuCDQutCw0LbQtdGC0LUg0L/RgNC40YfQ
uNC90LDRgtCwLCDQv9C+0YDQsNC00Lgg0LrQvtGP0YLQviDQvdC1INGB0YLQtSDQvtGC0LPQvtCy
0L7RgNC40LvQuCDQvdCwINGB0YrQvtCx0YnQtdC90LjQtdGC0L4g0LzQuDxicj7CoCDQktCw0YjQ
uNGP0YIg0YHQtdGA0LbQsNC90YIg0JXQu9C40LfQsNCx0LXRgtCwINCc0LDRgNC6PGJyPkhlbGxv
PGJyPsKgUGxlYXNlIGRlYXIgY2FuIHlvdSBsZXQgbWUga25vdyB0aGUgcmVhc29uIHdoeSB5b3Ug
aGF2ZSBub3QgcmVwbHkgbXkgbWVzc2FnZTxicj7CoFlvdXIgc2VyZ2VhbnQgRWxpc2FiZXR0YSBN
YXJrwqDCoDxicj48L2Rpdj4NCg0KPHA+PC9wPgoKLS0gPGJyIC8+CllvdSByZWNlaXZlZCB0aGlz
IG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMg
JnF1b3Q7Q2xhbmcgQnVpbHQgTGludXgmcXVvdDsgZ3JvdXAuPGJyIC8+ClRvIHVuc3Vic2NyaWJl
IGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQg
YW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOmNsYW5nLWJ1aWx0LWxpbnV4K3Vuc3Vic2NyaWJl
QGdvb2dsZWdyb3Vwcy5jb20iPmNsYW5nLWJ1aWx0LWxpbnV4K3Vuc3Vic2NyaWJlQGdvb2dsZWdy
b3Vwcy5jb208L2E+LjxiciAvPgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZp
c2l0IDxhIGhyZWY9Imh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9jbGFuZy1idWls
dC1saW51eC9DQUR0YmVoUWdGSjk0ZDk1YTRlS042d25mQmtjNUJYRDhfdXQ5ZTlBUzBPZnhYX2c0
eXclNDBtYWlsLmdtYWlsLmNvbT91dG1fbWVkaXVtPWVtYWlsJnV0bV9zb3VyY2U9Zm9vdGVyIj5o
dHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvY2xhbmctYnVpbHQtbGludXgvQ0FEdGJl
aFFnRko5NGQ5NWE0ZUtONnduZkJrYzVCWEQ4X3V0OWU5QVMwT2Z4WF9nNHl3JTQwbWFpbC5nbWFp
bC5jb208L2E+LjxiciAvPgo=
--0000000000004d102005e0cde7ba--
