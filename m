Return-Path: <clang-built-linux+bncBCHN5SMG24LBBLVX6SLAMGQEHTSVCIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FFE57F4A3
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 Jul 2022 12:15:11 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id sg42-20020a170907a42a00b0072e3fc6cdd1sf2364437ejc.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 Jul 2022 03:15:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1658657711; cv=pass;
        d=google.com; s=arc-20160816;
        b=WVdSzhgNZUzhLCZb5wv3rTL/IXwWsoS8r3d920uciwNyVZmIbHl+zAt5k3Jt+ix5Bn
         cK3lg1OHzBc6ZapeEY3jvUSmyWKMfhgKunbkPi7binEKZospW/BTKy5Cik/9oEX4xafR
         u3GRFb18Y1kgS2vVlS2kdovZXc9EHkmbTRpjGjIlpaufOEUj51JL/Q9H/VdanmQGvFWR
         qWJAMRSdw5wPemRVGgxeHYcAXpDLy3zmz+KR9X82tY+3UL+fm7UdOxt9xZO1Db1Tyoj6
         JnK6B5bmo2oPlTm/Q3/78UiH2Ws/fkrCZiiclE86PO0dJwzc43XhLCJASRJZiq5k8GZ8
         Pf7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=ViL37Ib1B6bpUI8+507Ydk2M89Ov0coau06DW11lRNs=;
        b=qjGpVEjjagzBMcusEdLHUdSdceTmQtW4sOXxsj5rX2AtwCsV/6XyPIpubxXzq/ZbEj
         B5IpshGh8g2I2P0bmx29+jI+dLD7VBMGzDeAdntP+C6HZY3TyluSa+gD/T5XLYFVSrVJ
         lPscW03tvFGSNPjS3MyDWgK5RotvRprPG8OwHip+TAu3NSCjxcvkClQcuwrI6jL1Qfd1
         Lrc5PbdKb8W+p2G9RB9Gbt5V7lm0nyp1/M+AdGVuZvO0T/3oTnEC1dwP7RDPOL667Moz
         S6fWcGEK2XEcwbRQ7nCKfDHIyUMhwWdIU9EMvVulRj1L+yx4ON3pT+wvBxt2jHrjZU2/
         v09Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="DCLow/+K";
       spf=pass (google.com: domain of nadazaki127@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=nadazaki127@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ViL37Ib1B6bpUI8+507Ydk2M89Ov0coau06DW11lRNs=;
        b=T1fTF0wxupHYDTa47fvyKea+4YgMe6jJ4c0vc/5AQv9+fcJGCq7qoeYyYZs8IyA4QV
         Uqrce1K4EOh8NzDjIQ7D8SudNB71oOls6zUic0QxEJvmpDeGEiFPpgvQzC8CSSAx9YWR
         suAfS1c3RH1yfIZvPHVm8+QIR2vlynqM3n6gaAJo45dqOm75ovow5psKRVXFfqfzPdt4
         FlbYTnm+p4/xv7mq32/BXlMy4fxfypl+bu9ttDq40kCRsJiRUoGJQdI4eMbjjc9SUeN6
         HqSsYFscTrCF0DdtenhHb55Tj6tTRAKpuOI0lhKncJTmmvpcZIGw7a8S/TrzDtHLD1uq
         c9lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ViL37Ib1B6bpUI8+507Ydk2M89Ov0coau06DW11lRNs=;
        b=UkElMVj25mckCQQzNvUyYcwIfiIO1TGaZMYS8kpi/4qnxXMKY5OCOW8a0zwTbFtGbE
         xaQ0i1maBebGKgaylzNn8tyDBnAxLgmM6W5u09KO0GmaewhB4VD62CRupf49zFlAdLgH
         fTphqDR9kzYoCz41mfiRWEZAkuLRDKbWLzxed8s1ZWzL3SdPf+wkudW+4nNLlo6p/cse
         QKOF2pyYsuylqiUtntWwGlilxd/Tr/IwfAtzOEySLUg7iyuCz3Xgp7IUKFasbtMapZe4
         JfBCWFRfJelkd2PJ85i1km2fxWkjv50VgtochrUo32AE0ClJ67Lgb4KYuZGY6ACBEfP7
         ffYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ViL37Ib1B6bpUI8+507Ydk2M89Ov0coau06DW11lRNs=;
        b=oLdnGUVvnXkx270LAOcltFUVMGHbpQHeUkdjhwlupBgLhJvHcYzLRQ1N96ljxuElKO
         uWVLxd83xm9Q2oELpXZk6CQdMa/+00NKLHrp1bL5EOUwcv5W1/G49Y3aMtiOcqeEY7zE
         GLKJqG49hiKd2TRFo3kR1Zb4E27F22fMMjvrVtzoWjnW4bdCcci34Gs+2d1SZ4jLGdlr
         /L4aI+3TkasfE22qbwqVDJ6vWKv1KEy3wEO74BiICUti3T3s5RH/AzN1PBjn/8b/5rJG
         ZKSDF8IZsOMzJyZ9BiLpdg8i5MWokHCdthYLAtkCc3xKp043a09UKXE4v79jGrkJ2F/5
         49AQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora95/OcZlqD2TinKsUwfcAO+Fj6mIl1rn2bc2bZHWfQGO/8di6qS
	5YmmmpGEDLYzGVznF8i5aPg=
X-Google-Smtp-Source: AGRyM1sUxIK6Fg+U71Owf6IRA3sO9mR6yX9Gfl7ELFlcDzqArU9tH9DaudpFEXXcEb65JJKyzhtvnQ==
X-Received: by 2002:a05:6402:e96:b0:43a:f21f:42a0 with SMTP id h22-20020a0564020e9600b0043af21f42a0mr8391815eda.382.1658657710731;
        Sun, 24 Jul 2022 03:15:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:d0d7:0:b0:43a:6e16:5059 with SMTP id g23-20020a50d0d7000000b0043a6e165059ls2109948edf.2.-pod-prod-gmail;
 Sun, 24 Jul 2022 03:15:09 -0700 (PDT)
X-Received: by 2002:a05:6402:4315:b0:43a:d79e:117c with SMTP id m21-20020a056402431500b0043ad79e117cmr8203163edc.194.1658657709713;
        Sun, 24 Jul 2022 03:15:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1658657709; cv=none;
        d=google.com; s=arc-20160816;
        b=X04NC6nAsjNrWpCtkaTMAicU9+GJoFyHlWJqPIC/o1b9sI/MoNyAS9CwnefgNlSBi7
         df+ZmpFPc4VJRdjwiLPv9MCDDVcA9DfifQAk4H8CjwngtonwYHzv1Vyk5zBECS8jw8xj
         dZDF07W3lOR1A9VGLpBEtyaRncunL0dYFUpxNubIvKGneFNR6t8VUzH1koseQ40hA+W8
         +HGk+/C5GzwFM5w1ZhbfgNlNiIfWAyWldENLUZNHrxHeB6rJm4m2PW9uyLKnDBLjGtF2
         ykDLoY/kejByYAb4aJd0x7T8IViEnVDnBclwXGVzOO9hZf/1Tlt1tKa8rv2pnFDYfNZe
         XeFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MsNSFRuo/JA8rRrHgt+WARJQqTIXIcnofP1MIjDYQFs=;
        b=GS20v9ni+kV1U1mrZz8kaMdQUwhGwl0DaeEK9B+YEOrzIBLQ3MoN1JZjgMOF5DRBFO
         O5NT2+swQWOJpojjxUGQr8nEwl2Xle0wYXWu4qOTVSCX8eRWX9SnRrpuLDTMLWDWX0R2
         mtLJbWGS8dL/JfCAuJ14jtihyY2VxGjpBPXxmi6EUspmMw3eJyDaZsjbSfCkkMoHVEjV
         xTP/gvAPA+y299gXlc7i++9YdVdz2sxccZEcHN8EQWLu3w2BPp4GCywCOThDILtw0aqD
         dHo/aJmHd0SoXieHTrq2b+kneKRtONWACIXnH86Sfb78246LQ5iTHxiP2k6kG6nrtISw
         qrEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="DCLow/+K";
       spf=pass (google.com: domain of nadazaki127@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) smtp.mailfrom=nadazaki127@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com. [2a00:1450:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id d4-20020a50ea84000000b0043a8ea6fc8dsi328162edo.4.2022.07.24.03.15.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jul 2022 03:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of nadazaki127@gmail.com designates 2a00:1450:4864:20::42b as permitted sender) client-ip=2a00:1450:4864:20::42b;
Received: by mail-wr1-x42b.google.com with SMTP id h8so12102545wrw.1
        for <clang-built-linux@googlegroups.com>; Sun, 24 Jul 2022 03:15:09 -0700 (PDT)
X-Received: by 2002:a05:6000:18a2:b0:21d:bc7c:1c83 with SMTP id
 b2-20020a05600018a200b0021dbc7c1c83mr4672044wri.420.1658657708454; Sun, 24
 Jul 2022 03:15:08 -0700 (PDT)
MIME-Version: 1.0
From: Nada zaki <nadazaki127@gmail.com>
Date: Sun, 24 Jul 2022 12:14:53 +0200
Message-ID: <CAPOKP-zGAmmbV7MWX3UH3bbze9_uv+dbx0uE+3mNjPy3tx+dpw@mail.gmail.com>
Subject: =?UTF-8?B?2YbYrdmK2YPZhSDYrNmF2YrYudinINmE2YTZhdi02KfYsdmD2Kkg2YHZiiDYp9mE2K/YqA==?=
	=?UTF-8?B?2YTZiNmFINin2YTYqtiv2LHZitio2Yog2YHZiiDYp9mE2KrYs9mI2YrZgiDYp9mE2KfZhNmD2KrYsdmI?=
	=?UTF-8?B?2YbZiiDYp9mE2KfYrdiq2LHYp9mB2Yog2YXZhiAzMSDZitmI2YTZitmIIOKAkyA0INin2LrYs9i32LMg?=
	=?UTF-8?B?MjAyMiDYrdi22YjYsSDYp9mB2KrYsdin2LbZiiDYudio2LEg2YXZhti12Kkg2LLZiNmI2YjZhSDZgdmJ?=
	=?UTF-8?B?INit2KfZhCDYqti52KvYsSDYp9mE2K3YttmI2LEg2KjYs9mFINin2YTZhNmHINin2YTYsdit2YXZhiA=?=
	=?UTF-8?B?2KfZhNix2K3ZitmFINin2YTYs9mE2KfZhSDYudmE2YrZg9mFINmI2LHYrdmF2Kkg2KfZhNmE2Ycg2Yg=?=
	=?UTF-8?B?2KjYsdmD2KfYqtipINiq2YfYr9mK2YPZhSDYp9mE2K/Yp9ixINin2YTYudix2KjZitipINmE2YTYqtmG?=
	=?UTF-8?B?2YXZitipINin2YTYp9iv2KfYsdmK2Kkg2KfZhNiv2KjZhNmI2YUg2KfZhNiq2K/YsdmK2KjZiiDZgdmK?=
	=?UTF-8?B?INin2YTYqtiz2YjZitmCINin2YTYp9mE2YPYqtix2YjZhtmKINin2YTYp9it2KrYsdin2YHZiiDYqNin?=
	=?UTF-8?B?2YTYqti52KfZiNmGINmF2LkgMS0g2YjYstin2LHYqSDYp9mE2KrYsdio2YrYqSDZiNin2YTYqti52YQ=?=
	=?UTF-8?B?2YrZhSAyX9mF2LHZg9iyINin2YTZgtin2YfYsdipINmE2KrZhtmF2YrYqSDYp9mE2YXZiNin2LHYryA=?=
	=?UTF-8?B?2KfZhNio2LTYsdmK2KkgM18g2YXYrdin2YHYuNipINin2YTZgtin2YfYsdipIDTigJMg2KfZhNmF2Lk=?=
	=?UTF-8?B?2YfYryDYp9mE2YLZiNmF2Yog2YTZhNis2YjYr9ipIDUtINmI2LLYp9ix2Kkg2KfZhNiq2KzYp9ix2Kkg?=
	=?UTF-8?B?2YjYp9mE2LXZhtin2LnYqSA2LSDYqNiq2LXYr9mK2YIg2YXZhiDZiNiy2KfYsdipINin2YTYrtin2LE=?=
	=?UTF-8?B?2KzZitipINij2YLZiNmJINi02YfYp9iv2Kkg2YHZiiDYp9mE2KrYs9mI2YrZgiDYudio2LHYp9mE2Kc=?=
	=?UTF-8?B?2YbYqtix2YbYqiDZhdmGIDMxINmK2YjZhNmK2Ygg4oCTIDQg2KfYutiz2LfYsyAyMDIyINit2LbZiNix?=
	=?UTF-8?B?INin2YHYqtix2KfYttmKINi52KjYsSDZhdmG2LXYqSDYstmI2YjZiNmFINmB77+9?=
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000843a2605e48a57a7"
X-Original-Sender: nadazaki127@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b="DCLow/+K";       spf=pass
 (google.com: domain of nadazaki127@gmail.com designates 2a00:1450:4864:20::42b
 as permitted sender) smtp.mailfrom=nadazaki127@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000843a2605e48a57a7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

2YbYrdmK2YPZhSDYrNmF2YrYudinICDZhNmE2YXYtNin2LHZg9ipINmB2YogICAg2KfZhNiv2KjZ
hNmI2YUg2KfZhNiq2K/YsdmK2KjZiiDZgdmKINin2YTYqtiz2YjZitmCINin2YTYp9mE2YPYqtix
2YjZhtmKDQrYp9mE2KfYrdiq2LHYp9mB2Yog2YXZhiAzMSDZitmI2YTZitmIIOKAkyA0INin2LrY
s9i32LMgMjAyMiAg2K3YttmI2LEg2KfZgdiq2LHYp9i22Yog2LnYqNixINmF2YbYtdipINiy2YjZ
iNmI2YUg2YHZiSDYrdin2YQNCtiq2LnYq9ixINin2YTYrdi22YjYsQ0KDQoNCg0KKtio2LPZhSDY
p9mE2YTZhyDYp9mE2LHYrdmF2YYg2KfZhNix2K3ZitmFKg0KDQoq2KfZhNiz2YTYp9mFINi52YTZ
itmD2YUg2YjYsdit2YXYqSDYp9mE2YTZhyDZiNio2LHZg9in2KrYqSoNCg0KKtiq2YfYr9mK2YPZ
hSDYp9mE2K/Yp9ixINin2YTYudix2KjZitipINmE2YTYqtmG2YXZitipINin2YTYp9iv2KfYsdmK
2KkqDQoNCirYp9mE2K/YqNmE2YjZhSDYp9mE2KrYr9ix2YrYqNmKINmB2Yog2KfZhNiq2LPZiNmK
2YIg2KfZhNin2YTZg9iq2LHZiNmG2Yog2KfZhNin2K3Yqtix2KfZgdmKKg0KDQoq2KjYp9mE2KrY
udin2YjZhiDZhdi5Kg0KDQoqMS0g2YjYstin2LHYqSDYp9mE2KrYsdio2YrYqSDZiNin2YTYqti5
2YTZitmFKg0KDQoqMl/Zhdix2YPYsiDYp9mE2YLYp9mH2LHYqSDZhNiq2YbZhdmK2Kkg2KfZhNmF
2YjYp9ix2K8g2KfZhNio2LTYsdmK2KkqDQoNCiozXyDZhdit2KfZgdi42Kkg2KfZhNmC2KfZh9ix
2KkqDQoNCio04oCTINin2YTZhdi52YfYryDYp9mE2YLZiNmF2Yog2YTZhNis2YjYr9ipKg0KDQoq
NS0g2YjYstin2LHYqSDYp9mE2KrYrNin2LHYqSDZiNin2YTYtdmG2KfYudipKg0KDQoqNi0g2KjY
qti12K/ZitmCINmF2YYg2YjYstin2LHYqSDYp9mE2K7Yp9ix2KzZitipKg0KDQogKtij2YLZiNmJ
INi02YfYp9iv2Kkg2YHZiiDYp9mE2KrYs9mI2YrZgiDYudio2LHYp9mE2KfZhtiq2LHZhtiqKg0K
DQoq2YXZhiAzMSDZitmI2YTZitmIIOKAkyA0INin2LrYs9i32LMgMjAyMioNCg0KKtit2LbZiNix
INin2YHYqtix2KfYttmKINi52KjYsSDZhdmG2LXYqSDYstmI2YjZiNmFINmB2Ykg2K3Yp9mEINiq
2LnYq9ixINin2YTYrdi22YjYsSoNCg0KDQoNCirYqtmB2KfYtdmK2YQg2YjZhdit2KfZiNixINin
2YTYr9io2YTZiNmFINin2YTYqtiv2LHZitio2YoqDQoNCirYqNix2YbYp9mF2Kwg2KrYr9ix2YrY
qNmKINiq2YUg2KrYtdmF2YrZhdmHINiu2LXZiti12Kcg2YTZhNix2KfYutio2YrZhiDYqNin2YTY
udmF2YQg2YHZiiDZhdis2KfZhCDYp9mE2KrYs9mI2YrZgiDYp9mE2KfZhNmD2KrYsdmI2YbZig0K
2K3ZitirINmK2LrYt9mKINis2YXZiti5INis2YjYp9mG2Kgg2KfZhNiq2LPZiNmK2YIg2KfZhNin
2YTZg9iq2LHZiNmG2YrYjCDZiNmC2K8g2KrZhSDYqti12YXZitmFINiq2YTZgyDYp9mE2K/ZiNix
2Kkg2KfZhNiq2K/YsdmK2KjZitipDQrZhNiq2YbYp9iz2Kgg2KzZhdmK2Lkg2KfZhNmF2LPYqtmI
2YrYp9iq2Iwg2YXZhiDYp9mE2YXYqNiq2K/YptmK2YYg2YjYrdiq2Ykg2KfZhNmF2K3Yqtix2YHZ
itmG2Iwg2YTYo9mGINin2YTYr9mI2LHYqSDYqti62LfZiiDYp9mH2YUNCtin2YTZhdit2KfZiNix
INin2YTZhdix2KrYqNi32Kkg2KjZhdis2KfZhCDYp9mE2KrYs9mI2YrZgiDYp9mE2KfZhNmD2KrY
sdmI2YbZitiMINmI2KfYtNmH2KfYsSDZhdmI2KfZgti5INin2YTYp9mG2KrYsdmG2KrYjCDZiNin
2YTZgtin2KENCtin2YTYttmI2KEg2LnZhNmJINin2LPYqtix2KfYqtmK2KzZitin2Kog2KfZhNiq
2LPZiNmK2YIg2KfZhNin2YTZg9iq2LHZiNmG2YrYjCDYqNmF2Kcg2YrYttmF2YYg2YTZhNmF2LTY
p9ix2YPZitmGINmB2Yog2YfYsNmHINin2YTYr9mI2LHYqQ0K2KfZhNiq2K/YsdmK2KjZitipINin
2YTZiNi12YjZhCDYp9mE2Ykg2YXYs9iq2YjZiSDYp9mE2YXYrdiq2LHZgdmK2YYg2YHZiiDYp9mE
2KrYs9mI2YrZgiDYp9mE2KfZhNmD2KrYsdmI2YbZitiMINio2YXYtNin2LHZg9iq2YMg2YHZiiDZ
h9iw2YcNCtin2YTYr9mI2LHYqdiMINmB2KPZhtiqINiq2K/YrtmEINmH2LDYpyDYp9mE2YXYrNin
2YQg2YjYqti12KjYrSDZiNin2K3Yr9inINmF2YYg2KfZhNmF2K3Yqtix2YHZitmGINmB2Yog2KfZ
hNiq2LPZiNmK2YINCtin2YTYp9mE2YPYqtix2YjZhtmK2Iwg2KrYqtmFINin2YTYr9ix2KfYs9ip
INmB2Yog2YfYsNmHINin2YTYr9mI2LHYqSDYp9mE2KrYr9ix2YrYqNmK2Kkg2KfZiNmGINmE2KfZ
itmGINi52KjYsSDYp9mE2KfZhtiq2LHZhtiqINio2YbYuNin2YUNCtin2YTYqtiv2LHZitioINi5
2YYg2KjYudivLioNCg0KKtin2YTYo9mH2K/Yp9mBINin2YTYqtiv2LHZitio2YrYqSoNCg0KKsK3
ICAgICAgICAgKirZhdi52LHZgdipINi32LHZgiDZiNij2K/ZiNin2Kog2YjYp9iz2KrYsdin2KrZ
itis2YrYp9iqINin2YTYqtiz2YjZitmCINin2YTYpdmE2YPYqtix2YjZhtmKINmI2YPZitmB2YrY
qQ0K2KfYs9iq2K7Yr9in2YXZh9inINmB2Yog2KrYs9mI2YrZgiDYp9mE2LPZhNi5INmI2KfZhNiu
2K/Zhdin2KogLioNCg0KKsK3ICAgICAgICAgKirYudmF2YQg2K7Yt9ipINiq2LPZiNmK2YLZitip
INiq2KrZhtin2LPYqCDZhdi5INin2YTZhdmG2KrYrNin2Kog2YjYp9mE2K7Yr9mF2KfYqiDYp9mE
2KrZiiDYqtmC2K/ZhdmH2KcNCtmE2LnZhdmE2KfYptmDLioNCg0KKsK3ICAgICoq2KfZhNiq2LnY
sdmBINi52YTZiiDZg9mK2YHZitipINit2YQg2KfZhNmF2LTYp9mD2YQg2KfZhNiq2Yog2KrYudiq
2LHYtiDYudmF2YTZitipINin2YTYqtiz2YjZitmCINmI2YPZitmB2YrYqSDYpdmK2KzYp9ivDQrY
p9mE2KjYr9in2KbZhCAuKg0KDQoq2YTYqtij2YPZitivINmF2LTYp9ix2YPYqtmD2YUgKirYp9mE
2LTZh9in2K/YqSoqINin2YTZhdiw2YPZiNix2Kkg2KfYudmE2KfZhyDZitix2KzZiSDYp9mE2KrZ
iNin2LXZhCDZhdi5INijLyDYs9in2LHYqSDYudio2K8NCtin2YTYrNmI2KfYryDigJMg2KzZiNin
2YQgJiDZiNin2KrYsyDYp9ioIDAwMjAxMDYyOTkyNTEwIC0gMDAyMDEwOTY4NDE2MjYqDQoNCg0K
DQoq2YrYudmC2K8g2YHZiiDZhtmB2LMg2KfZhNiq2KfYsdmK2K4gOi0qDQoNCjEuINi02YfYp9iv
2Kkg2YXYr9mK2LEg2KzZiNiv2Kkg2YXYudiq2YXYrw0KDQoyLiDYtNmH2KfYr9ipINmF2K/Zitix
INiq2YjZg9mK2K8g2KfZhNis2YjYr9ipINin2YTZhdi52KrZhdivDQoNCjMuINi02YfYp9iv2Kkg
2YXYr9mK2LEg2YXYsdin2YLYqNipINin2YTYrNmI2K/YqSDYp9mE2YXYudiq2YXYrw0KDQo0LiDY
tNmH2KfYr9ipINmF2K/ZitixINil2K/Yp9ix2Kkg2KfZhNmF2K7Yp9i32LEg2KfZhNmF2LnYqtmF
2K8NCg0KNS4g2LTZh9in2K/YqSDZhdiv2YrYsSDYp9mE2KjZitim2YrYqSDYp9mE2YXYudiq2YXY
rw0KDQo2LiDYtNmH2KfYr9ipINmF2K/ZitixINin2YTYs9mE2KfZhdipINmI2KfZhNi12K3YqSDY
p9mE2YXZh9mG2YrYqSDYp9mE2YXYudiq2YXYrw0KDQo3LiDYtNmH2KfYr9ipINmF2K/ZitixINiz
2YTYp9mF2Kkg2KfZhNi62LDYp9ihINin2YTZhdi52KrZhdivDQoNCjguINi02YfYp9iv2Kkg2YXY
r9mK2LEg2KfZhNmF2K7Yqtio2LHYp9iqINin2YTZhdi52KrZhdivDQoNCjkuINi02YfYp9iv2Kkg
2YXYr9mK2LEg2KPZhdmGINin2YTZhdi52YTZiNmF2KfYqiBJU08gMjcwMDENCg0KMTAuICAgICAg
ICAgICAgICAgICAg2LTZh9in2K/YqSDZhdiv2YrYsSDYqtmD2YbZiNmE2YjYrNmK2Kcg2KfZhNmF
2LnZhNmI2YXYp9iqIElTTyAvIElFQyAyMDAwMA0KDQoxMS4gICAgICAgICAgICAgICAgICDYtNmH
2KfYr9ipINmF2K/ZitixINiq2YLZitmK2YUg2KfZhNmF2LfYp9io2YLYqSDZhNi02LHZg9in2Kog
2KfZhNiq2YHYqtmK2LQgSVNPIC8gSUVDDQoxNzAyMA0KDQoxMi4gICAgICAgICAgICAgICAgICDY
tNmH2KfYr9ipINmF2K/ZitixINi52YTYp9mF2Kkg2KfZhNmF2LfYp9io2YLYqSDYp9mE2KPZiNix
2YjYqNmK2Kkg2KfZhNmF2LnYqtmF2K8gQ0UgTWFyaw0KDQoxMy4gICAgICAgICAgICAgICAgICDY
tNmH2KfYr9ipINmF2K/ZitixINin2YTYqtiu2LfZiti3INin2YTZhdi52KrZhdivDQoNCjE0LiAg
ICAgICAgICAgICAgICAgINi02YfYp9iv2Kkg2YXYr9mK2LEg2KXYr9in2LHYqSDYp9mE2YXZiNin
2LHYryDYp9mE2KjYtNix2YrYqSDYp9mE2YXYudiq2YXYrw0KDQoxNS4gICAgICAgICAgICAgICAg
ICDYtNmH2KfYr9ipINmF2K/ZitixINin2YTYtdmK2KfZhtipINin2YTZhdi52KrZhdivDQoNCjE2
LiAgICAgICAgICAgICAgICAgINi02YfYp9iv2Kkg2YXYr9mK2LEg2KfZhNin2YbYqtin2Kwg2KfZ
hNmF2LnYqtmF2K8NCg0KMTcuICAgICAgICAgICAgICAgICAg2LTZh9in2K/YqSDZhdiv2YrYsSDY
p9mE2YXYrtin2LLZhiDZiNin2YTZhdiz2KrZiNiv2LnYp9iqINin2YTZhdi52KrZhdivDQoNCjE4
LiAgICAgICAgICAgICAgICAgINi02YfYp9iv2Kkg2YXYr9mK2LEg2KfZhNiq2LPZiNmK2YIg2KfZ
hNmF2LnYqtmF2K8NCg0KLS0gCllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3Ug
YXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgIkNsYW5nIEJ1aWx0IExpbnV4IiBn
cm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBl
bWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBjbGFuZy1idWlsdC1saW51eCt1bnN1YnNj
cmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2Vi
IHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9jbGFuZy1idWlsdC1saW51
eC9DQVBPS1AtekdBbW1iVjdNV1gzVUgzYmJ6ZTlfdXYlMkJkYngwdUUlMkIzbU5qUHkzdHglMkJk
cHclNDBtYWlsLmdtYWlsLmNvbS4K
--000000000000843a2605e48a57a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=
=3D"text-align:center;margin:0in 0in 10pt;line-height:115%;direction:rtl;un=
icode-bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"=
><span lang=3D"AR-SA" style=3D"font-size:22pt;line-height:115%;font-family:=
Arial,&quot;sans-serif&quot;">=D9=86=D8=AD=D9=8A=D9=83=D9=85 =D8=AC=D9=85=
=D9=8A=D8=B9=D8=A7 =C2=A0=D9=84=D9=84=D9=85=D8=B4=D8=A7=D8=B1=D9=83=D8=A9 =
=D9=81=D9=8A =C2=A0=C2=A0=C2=A0=D8=A7=D9=84=D8=AF=D8=A8=D9=84=D9=88=D9=85 =
=D8=A7=D9=84=D8=AA=D8=AF=D8=B1=D9=8A=D8=A8=D9=8A =D9=81=D9=8A =D8=A7=D9=84=
=D8=AA=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=D9=84=D8=A7=D9=84=D9=83=D8=AA=D8=B1=
=D9=88=D9=86=D9=8A =D8=A7=D9=84=D8=A7=D8=AD=D8=AA=D8=B1=D8=A7=D9=81=D9=8A
=D9=85=D9=86 31 =D9=8A=D9=88=D9=84=D9=8A=D9=88 =E2=80=93 4 =D8=A7=D8=BA=D8=
=B3=D8=B7=D8=B3 2022=C2=A0 =D8=AD=D8=B6=D9=88=D8=B1 =D8=A7=D9=81=D8=AA=D8=
=B1=D8=A7=D8=B6=D9=8A =D8=B9=D8=A8=D8=B1
=D9=85=D9=86=D8=B5=D8=A9 =D8=B2=D9=88=D9=88=D9=88=D9=85 =D9=81=D9=89 =D8=AD=
=D8=A7=D9=84 =D8=AA=D8=B9=D8=AB=D8=B1 =D8=A7=D9=84=D8=AD=D8=B6=D9=88=D8=B1<=
/span><span lang=3D"AR-SA" style=3D"font-size:22pt;line-height:115%;font-fa=
mily:Arial,&quot;sans-serif&quot;"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><u><span lang=3D"=
AR-SA" style=3D"font-size:26pt;line-height:115%;font-family:Andalus,&quot;s=
erif&quot;;color:red"><span style=3D"text-decoration-line:none">=C2=A0</spa=
n></span></u></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><u><span lang=3D"=
AR-EG" style=3D"font-size:26pt;line-height:115%;font-family:Andalus,&quot;s=
erif&quot;;color:red">=D8=A8=D8=B3=D9=85 =D8=A7=D9=84=D9=84=D9=87 =D8=A7=D9=
=84=D8=B1=D8=AD=D9=85=D9=86 =D8=A7=D9=84=D8=B1=D8=AD=D9=8A=D9=85</span></u>=
</p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><u><span lang=3D"=
AR-EG" style=3D"font-size:26pt;line-height:115%;font-family:Andalus,&quot;s=
erif&quot;;color:rgb(38,38,38)">=D8=A7=D9=84=D8=B3=D9=84=D8=A7=D9=85
=D8=B9=D9=84=D9=8A=D9=83=D9=85 =D9=88=D8=B1=D8=AD=D9=85=D8=A9 =D8=A7=D9=84=
=D9=84=D9=87 =D9=88=D8=A8=D8=B1=D9=83=D8=A7=D8=AA=D8=A9</span></u></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><u><span lang=3D"=
AR-EG" style=3D"font-size:26pt;line-height:115%;font-family:Arial,&quot;san=
s-serif&quot;;color:rgb(38,38,38)">=D8=AA=D9=87=D8=AF=D9=8A=D9=83=D9=85 =D8=
=A7=D9=84=D8=AF=D8=A7=D8=B1 =D8=A7=D9=84=D8=B9=D8=B1=D8=A8=D9=8A=D8=A9 =D9=
=84=D9=84=D8=AA=D9=86=D9=85=D9=8A=D8=A9
=D8=A7=D9=84=D8=A7=D8=AF=D8=A7=D8=B1=D9=8A=D8=A9</span></u><span lang=3D"AR=
-EG" style=3D"font-size:26pt;line-height:115%;font-family:Arial,&quot;sans-=
serif&quot;;color:rgb(38,38,38)"></span></p>

<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;directio=
n:ltr;unicode-bidi:embed;margin:0in 0in 10pt;line-height:115%;font-size:11p=
t;font-family:Calibri,&quot;sans-serif&quot;"><b><u><span lang=3D"AR-EG" di=
r=3D"RTL" style=3D"font-size:24pt;line-height:115%;font-family:Arial,&quot;=
sans-serif&quot;;color:red">=D8=A7=D9=84=D8=AF=D8=A8=D9=84=D9=88=D9=85 =D8=
=A7=D9=84=D8=AA=D8=AF=D8=B1=D9=8A=D8=A8=D9=8A =D9=81=D9=8A =D8=A7=D9=84=D8=
=AA=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=D9=84=D8=A7=D9=84=D9=83=D8=AA=D8=B1=D9=
=88=D9=86=D9=8A
=D8=A7=D9=84=D8=A7=D8=AD=D8=AA=D8=B1=D8=A7=D9=81=D9=8A</span></u></b><b><u>=
<span style=3D"font-size:24pt;line-height:115%;color:red"></span></u></b></=
p>

<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial;direc=
tion:ltr;unicode-bidi:embed;margin:0in 0in 10pt;line-height:115%;font-size:=
11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"AR-EG" di=
r=3D"RTL" style=3D"font-size:20pt;line-height:115%;font-family:Arial,&quot;=
sans-serif&quot;;color:rgb(13,13,13)">=D8=A8=D8=A7=D9=84=D8=AA=D8=B9=D8=A7=
=D9=88=D9=86 =D9=85=D8=B9</span></b></p>

<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial;direc=
tion:ltr;unicode-bidi:embed;margin:0in 0in 10pt;line-height:115%;font-size:=
11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"AR-EG" di=
r=3D"RTL" style=3D"font-size:20pt;line-height:115%;font-family:Arial,&quot;=
sans-serif&quot;;color:rgb(0,112,192)">1- =D9=88=D8=B2=D8=A7=D8=B1=D8=A9 =
=D8=A7=D9=84=D8=AA=D8=B1=D8=A8=D9=8A=D8=A9
=D9=88=D8=A7=D9=84=D8=AA=D8=B9=D9=84=D9=8A=D9=85</span></b><b><span style=
=3D"font-size:20pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot=
;;color:rgb(0,112,192)"></span></b></p>

<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial;direc=
tion:ltr;unicode-bidi:embed;margin:0in 0in 10pt;line-height:115%;font-size:=
11pt;font-family:Calibri,&quot;sans-serif&quot;"><span dir=3D"RTL"></span><=
span dir=3D"RTL"></span><b><span lang=3D"AR-EG" dir=3D"RTL" style=3D"font-s=
ize:20pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot;;color:rg=
b(0,112,192)"><span dir=3D"RTL"></span><span dir=3D"RTL"></span>2_=D9=85=D8=
=B1=D9=83=D8=B2 =D8=A7=D9=84=D9=82=D8=A7=D9=87=D8=B1=D8=A9 =D9=84=D8=AA=D9=
=86=D9=85=D9=8A=D8=A9 =D8=A7=D9=84=D9=85=D9=88=D8=A7=D8=B1=D8=AF =D8=A7=D9=
=84=D8=A8=D8=B4=D8=B1=D9=8A=D8=A9</span></b></p>

<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial;direc=
tion:ltr;unicode-bidi:embed;margin:0in 0in 10pt;line-height:115%;font-size:=
11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"AR-EG" di=
r=3D"RTL" style=3D"font-size:20pt;line-height:115%;font-family:Arial,&quot;=
sans-serif&quot;;color:rgb(0,112,192)">3_ =D9=85=D8=AD=D8=A7=D9=81=D8=B8=D8=
=A9 =D8=A7=D9=84=D9=82=D8=A7=D9=87=D8=B1=D8=A9</span></b></p>

<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial;direc=
tion:ltr;unicode-bidi:embed;margin:0in 0in 10pt;line-height:115%;font-size:=
11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"AR-EG" di=
r=3D"RTL" style=3D"font-size:20pt;line-height:115%;font-family:Arial,&quot;=
sans-serif&quot;;color:rgb(0,112,192)">4=E2=80=93 =D8=A7=D9=84=D9=85=D8=B9=
=D9=87=D8=AF =D8=A7=D9=84=D9=82=D9=88=D9=85=D9=8A =D9=84=D9=84=D8=AC=D9=88=
=D8=AF=D8=A9</span></b></p>

<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;backgrou=
nd-image:initial;background-position:initial;background-size:initial;backgr=
ound-repeat:initial;background-origin:initial;background-clip:initial;direc=
tion:ltr;unicode-bidi:embed;margin:0in 0in 10pt;line-height:115%;font-size:=
11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"AR-EG" di=
r=3D"RTL" style=3D"font-size:20pt;line-height:115%;font-family:Arial,&quot;=
sans-serif&quot;;color:rgb(0,112,192)">5- =D9=88=D8=B2=D8=A7=D8=B1=D8=A9 =
=D8=A7=D9=84=D8=AA=D8=AC=D8=A7=D8=B1=D8=A9
=D9=88=D8=A7=D9=84=D8=B5=D9=86=D8=A7=D8=B9=D8=A9</span></b><b><span style=
=3D"font-size:20pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot=
;;color:rgb(0,112,192)"></span></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span dir=3D"RTL"=
></span><span dir=3D"RTL"></span><b><span lang=3D"AR-EG" style=3D"font-size=
:20pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot;;color:rgb(0=
,112,192)"><span dir=3D"RTL"></span><span dir=3D"RTL"></span>6-
=D8=A8=D8=AA=D8=B5=D8=AF=D9=8A=D9=82 =D9=85=D9=86 =D9=88=D8=B2=D8=A7=D8=B1=
=D8=A9 =D8=A7=D9=84=D8=AE=D8=A7=D8=B1=D8=AC=D9=8A=D8=A9</span></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"=
AR-EG" style=3D"font-size:26pt;line-height:115%;font-family:Arial,&quot;san=
s-serif&quot;;color:red">=C2=A0</span></b><b><span lang=3D"AR-SA" style=3D"=
font-size:26pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot;;co=
lor:red">=D8=A3=D9=82=D9=88=D9=89 =D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=81=D9=
=8A =D8=A7=D9=84=D8=AA=D8=B3=D9=88=D9=8A=D9=82 =D8=B9=D8=A8=D8=B1=D8=A7=D9=
=84=D8=A7=D9=86=D8=AA=D8=B1=D9=86=D8=AA</span></b><b><span lang=3D"AR-SA" s=
tyle=3D"font-size:26pt;line-height:115%;font-family:Arial,&quot;sans-serif&=
quot;;color:red"></span></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"=
AR-EG" style=3D"font-size:20pt;line-height:115%;font-family:&quot;Simplifie=
d Arabic&quot;,&quot;serif&quot;;color:black">=D9=85=D9=86 31 =D9=8A=D9=88=
=D9=84=D9=8A=D9=88 =E2=80=93
4 =D8=A7=D8=BA=D8=B3=D8=B7=D8=B3 2022</span></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"=
AR-SA" style=3D"font-size:16pt;line-height:115%;font-family:Arial,&quot;san=
s-serif&quot;;color:black">=D8=AD=D8=B6=D9=88=D8=B1 =D8=A7=D9=81=D8=AA=D8=
=B1=D8=A7=D8=B6=D9=8A =D8=B9=D8=A8=D8=B1 =D9=85=D9=86=D8=B5=D8=A9 =D8=B2=D9=
=88=D9=88=D9=88=D9=85 =D9=81=D9=89 =D8=AD=D8=A7=D9=84
=D8=AA=D8=B9=D8=AB=D8=B1 =D8=A7=D9=84=D8=AD=D8=B6=D9=88=D8=B1</span></b></p=
>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"=
AR-SA" style=3D"font-size:16pt;line-height:115%;font-family:Arial,&quot;san=
s-serif&quot;;color:black">=C2=A0</span></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"text-align:justify;margin:0in 0=
in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;font-size:11pt;fo=
nt-family:Calibri,&quot;sans-serif&quot;"><b><u><span lang=3D"AR-SA" style=
=3D"font-size:14pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot=
;;color:red">=D8=AA=D9=81=D8=A7=D8=B5=D9=8A=D9=84 =D9=88=D9=85=D8=AD=D8=A7=
=D9=88=D8=B1 =D8=A7=D9=84=D8=AF=D8=A8=D9=84=D9=88=D9=85 =D8=A7=D9=84=D8=AA=
=D8=AF=D8=B1=D9=8A=D8=A8=D9=8A</span></u></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"text-align:justify;margin:0in 0=
in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;font-size:11pt;fo=
nt-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"AR-SA" style=3D"=
font-size:12pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot;">=
=D8=A8=D8=B1=D9=86=D8=A7=D9=85=D8=AC =D8=AA=D8=AF=D8=B1=D9=8A=D8=A8=D9=8A =
=D8=AA=D9=85 =D8=AA=D8=B5=D9=85=D9=8A=D9=85=D9=87 =D8=AE=D8=B5=D9=8A=D8=B5=
=D8=A7 =D9=84=D9=84=D8=B1=D8=A7=D8=BA=D8=A8=D9=8A=D9=86
=D8=A8=D8=A7=D9=84=D8=B9=D9=85=D9=84 =D9=81=D9=8A =D9=85=D8=AC=D8=A7=D9=84 =
=D8=A7=D9=84=D8=AA=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=D9=84=D8=A7=D9=84=D9=83=
=D8=AA=D8=B1=D9=88=D9=86=D9=8A =D8=AD=D9=8A=D8=AB =D9=8A=D8=BA=D8=B7=D9=8A =
=D8=AC=D9=85=D9=8A=D8=B9 =D8=AC=D9=88=D8=A7=D9=86=D8=A8 =D8=A7=D9=84=D8=AA=
=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=D9=84=D8=A7=D9=84=D9=83=D8=AA=D8=B1=D9=88=
=D9=86=D9=8A=D8=8C =D9=88=D9=82=D8=AF =D8=AA=D9=85
=D8=AA=D8=B5=D9=85=D9=8A=D9=85 =D8=AA=D9=84=D9=83 =D8=A7=D9=84=D8=AF=D9=88=
=D8=B1=D8=A9 =D8=A7=D9=84=D8=AA=D8=AF=D8=B1=D9=8A=D8=A8=D9=8A=D8=A9 =D9=84=
=D8=AA=D9=86=D8=A7=D8=B3=D8=A8 =D8=AC=D9=85=D9=8A=D8=B9 =D8=A7=D9=84=D9=85=
=D8=B3=D8=AA=D9=88=D9=8A=D8=A7=D8=AA=D8=8C =D9=85=D9=86 =D8=A7=D9=84=D9=85=
=D8=A8=D8=AA=D8=AF=D8=A6=D9=8A=D9=86 =D9=88=D8=AD=D8=AA=D9=89 =D8=A7=D9=84=
=D9=85=D8=AD=D8=AA=D8=B1=D9=81=D9=8A=D9=86=D8=8C =D9=84=D8=A3=D9=86
=D8=A7=D9=84=D8=AF=D9=88=D8=B1=D8=A9 =D8=AA=D8=BA=D8=B7=D9=8A =D8=A7=D9=87=
=D9=85 =D8=A7=D9=84=D9=85=D8=AD=D8=A7=D9=88=D8=B1 =D8=A7=D9=84=D9=85=D8=B1=
=D8=AA=D8=A8=D8=B7=D8=A9 =D8=A8=D9=85=D8=AC=D8=A7=D9=84 =D8=A7=D9=84=D8=AA=
=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=D9=84=D8=A7=D9=84=D9=83=D8=AA=D8=B1=D9=88=
=D9=86=D9=8A=D8=8C =D9=88=D8=A7=D8=B4=D9=87=D8=A7=D8=B1 =D9=85=D9=88=D8=A7=
=D9=82=D8=B9 =D8=A7=D9=84=D8=A7=D9=86=D8=AA=D8=B1=D9=86=D8=AA=D8=8C
=D9=88=D8=A7=D9=84=D9=82=D8=A7=D8=A1 =D8=A7=D9=84=D8=B6=D9=88=D8=A1 =D8=B9=
=D9=84=D9=89 =D8=A7=D8=B3=D8=AA=D8=B1=D8=A7=D8=AA=D9=8A=D8=AC=D9=8A=D8=A7=
=D8=AA =D8=A7=D9=84=D8=AA=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=D9=84=D8=A7=D9=84=
=D9=83=D8=AA=D8=B1=D9=88=D9=86=D9=8A=D8=8C =D8=A8=D9=85=D8=A7 =D9=8A=D8=B6=
=D9=85=D9=86 =D9=84=D9=84=D9=85=D8=B4=D8=A7=D8=B1=D9=83=D9=8A=D9=86 =D9=81=
=D9=8A =D9=87=D8=B0=D9=87 =D8=A7=D9=84=D8=AF=D9=88=D8=B1=D8=A9
=D8=A7=D9=84=D8=AA=D8=AF=D8=B1=D9=8A=D8=A8=D9=8A=D8=A9 =D8=A7=D9=84=D9=88=
=D8=B5=D9=88=D9=84 =D8=A7=D9=84=D9=89 =D9=85=D8=B3=D8=AA=D9=88=D9=89 =D8=A7=
=D9=84=D9=85=D8=AD=D8=AA=D8=B1=D9=81=D9=8A=D9=86 =D9=81=D9=8A =D8=A7=D9=84=
=D8=AA=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=D9=84=D8=A7=D9=84=D9=83=D8=AA=D8=B1=
=D9=88=D9=86=D9=8A=D8=8C =D8=A8=D9=85=D8=B4=D8=A7=D8=B1=D9=83=D8=AA=D9=83 =
=D9=81=D9=8A =D9=87=D8=B0=D9=87 =D8=A7=D9=84=D8=AF=D9=88=D8=B1=D8=A9=D8=8C
=D9=81=D8=A3=D9=86=D8=AA =D8=AA=D8=AF=D8=AE=D9=84 =D9=87=D8=B0=D8=A7 =D8=A7=
=D9=84=D9=85=D8=AC=D8=A7=D9=84 =D9=88=D8=AA=D8=B5=D8=A8=D8=AD =D9=88=D8=A7=
=D8=AD=D8=AF=D8=A7 =D9=85=D9=86 =D8=A7=D9=84=D9=85=D8=AD=D8=AA=D8=B1=D9=81=
=D9=8A=D9=86 =D9=81=D9=8A =D8=A7=D9=84=D8=AA=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=
=D9=84=D8=A7=D9=84=D9=83=D8=AA=D8=B1=D9=88=D9=86=D9=8A=D8=8C =D8=AA=D8=AA=
=D9=85 =D8=A7=D9=84=D8=AF=D8=B1=D8=A7=D8=B3=D8=A9
=D9=81=D9=8A =D9=87=D8=B0=D9=87 =D8=A7=D9=84=D8=AF=D9=88=D8=B1=D8=A9 =D8=A7=
=D9=84=D8=AA=D8=AF=D8=B1=D9=8A=D8=A8=D9=8A=D8=A9 =D8=A7=D9=88=D9=86 =D9=84=
=D8=A7=D9=8A=D9=86 =D8=B9=D8=A8=D8=B1 =D8=A7=D9=84=D8=A7=D9=86=D8=AA=D8=B1=
=D9=86=D8=AA =D8=A8=D9=86=D8=B8=D8=A7=D9=85 =D8=A7=D9=84=D8=AA=D8=AF=D8=B1=
=D9=8A=D8=A8 =D8=B9=D9=86 =D8=A8=D8=B9=D8=AF.</span></b><b><span lang=3D"AR=
-SA" style=3D"font-size:12pt;line-height:115%;font-family:Arial,&quot;sans-=
serif&quot;"></span></b></p>

<p class=3D"MsoNormal" dir=3D"RTL" style=3D"margin:0in 0in 10pt;line-height=
:115%;direction:rtl;unicode-bidi:embed;font-size:11pt;font-family:Calibri,&=
quot;sans-serif&quot;"><b><u><span lang=3D"AR-SA" style=3D"font-size:14pt;l=
ine-height:115%;font-family:Arial,&quot;sans-serif&quot;;color:red">=D8=A7=
=D9=84=D8=A3=D9=87=D8=AF=D8=A7=D9=81 =D8=A7=D9=84=D8=AA=D8=AF=D8=B1=D9=8A=
=D8=A8=D9=8A=D8=A9</span></u></b></p>

<p class=3D"gmail-MsoListParagraphCxSpFirst" dir=3D"RTL" style=3D"margin:0i=
n 0.5in 0.0001pt 0in;line-height:115%;direction:rtl;unicode-bidi:embed;font=
-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span style=3D"fo=
nt-size:12pt;line-height:115%;font-family:Symbol">=C2=B7<span style=3D"font=
-variant-numeric:normal;font-variant-east-asian:normal;font-weight:normal;f=
ont-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times=
 New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></b><span dir=3D"RTL"></span><b><span lang=3D"AR-SA" style=3D=
"font-size:12pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot;">=
=D9=85=D8=B9=D8=B1=D9=81=D8=A9 =D8=B7=D8=B1=D9=82 =D9=88=D8=A3=D8=AF=D9=88=
=D8=A7=D8=AA =D9=88=D8=A7=D8=B3=D8=AA=D8=B1=D8=A7=D8=AA=D9=8A=D8=AC=D9=8A=
=D8=A7=D8=AA =D8=A7=D9=84=D8=AA=D8=B3=D9=88=D9=8A=D9=82
=D8=A7=D9=84=D8=A5=D9=84=D9=83=D8=AA=D8=B1=D9=88=D9=86=D9=8A =D9=88=D9=83=
=D9=8A=D9=81=D9=8A=D8=A9 =D8=A7=D8=B3=D8=AA=D8=AE=D8=AF=D8=A7=D9=85=D9=87=
=D8=A7 =D9=81=D9=8A =D8=AA=D8=B3=D9=88=D9=8A=D9=82 =D8=A7=D9=84=D8=B3=D9=84=
=D8=B9 =D9=88=D8=A7=D9=84=D8=AE=D8=AF=D9=85=D8=A7=D8=AA .</span></b></p>

<p class=3D"gmail-MsoListParagraphCxSpMiddle" dir=3D"RTL" style=3D"margin:0=
in 0.5in 0.0001pt 0in;line-height:115%;direction:rtl;unicode-bidi:embed;fon=
t-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span style=3D"f=
ont-size:12pt;line-height:115%;font-family:Symbol">=C2=B7<span style=3D"fon=
t-variant-numeric:normal;font-variant-east-asian:normal;font-weight:normal;=
font-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Time=
s New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></b><span dir=3D"RTL"></span><b><span lang=3D"AR-SA" style=3D=
"font-size:12pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot;">=
=D8=B9=D9=85=D9=84 =D8=AE=D8=B7=D8=A9 =D8=AA=D8=B3=D9=88=D9=8A=D9=82=D9=8A=
=D8=A9 =D8=AA=D8=AA=D9=86=D8=A7=D8=B3=D8=A8 =D9=85=D8=B9 =D8=A7=D9=84=D9=85=
=D9=86=D8=AA=D8=AC=D8=A7=D8=AA =D9=88=D8=A7=D9=84=D8=AE=D8=AF=D9=85=D8=A7=
=D8=AA
=D8=A7=D9=84=D8=AA=D9=8A =D8=AA=D9=82=D8=AF=D9=85=D9=87=D8=A7 =D9=84=D8=B9=
=D9=85=D9=84=D8=A7=D8=A6=D9=83.</span></b></p>

<p class=3D"gmail-MsoListParagraphCxSpLast" dir=3D"RTL" style=3D"margin:0in=
 0.5in 10pt 0in;line-height:115%;direction:rtl;unicode-bidi:embed;font-size=
:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span style=3D"font-si=
ze:26pt;line-height:115%;font-family:Symbol">=C2=B7<span style=3D"font-vari=
ant-numeric:normal;font-variant-east-asian:normal;font-weight:normal;font-s=
tretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times New =
Roman&quot;">=C2=A0=C2=A0=C2=A0 </span></span></b><span dir=3D"RTL"></span>=
<b><span lang=3D"AR-SA" style=3D"font-size:12pt;line-height:115%;font-famil=
y:Arial,&quot;sans-serif&quot;">=D8=A7=D9=84=D8=AA=D8=B9=D8=B1=D9=81
=D8=B9=D9=84=D9=8A =D9=83=D9=8A=D9=81=D9=8A=D8=A9 =D8=AD=D9=84 =D8=A7=D9=84=
=D9=85=D8=B4=D8=A7=D9=83=D9=84 =D8=A7=D9=84=D8=AA=D9=8A =D8=AA=D8=B9=D8=AA=
=D8=B1=D8=B6 =D8=B9=D9=85=D9=84=D9=8A=D8=A9 =D8=A7=D9=84=D8=AA=D8=B3=D9=88=
=D9=8A=D9=82 =D9=88=D9=83=D9=8A=D9=81=D9=8A=D8=A9 =D8=A5=D9=8A=D8=AC=D8=A7=
=D8=AF =D8=A7=D9=84=D8=A8=D8=AF=D8=A7=D8=A6=D9=84 .</span></b><b><span dir=
=3D"LTR" style=3D"font-size:26pt;line-height:115%"></span></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.2=
5in 10pt 0in;text-align:center;background-image:initial;background-position=
:initial;background-size:initial;background-repeat:initial;background-origi=
n:initial;background-clip:initial;line-height:115%;direction:rtl;unicode-bi=
di:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><spa=
n lang=3D"AR-JO" style=3D"font-size:22pt;line-height:115%;font-family:Arial=
,&quot;sans-serif&quot;;color:rgb(192,0,0)">=D9=84=D8=AA=D8=A3=D9=83=D9=8A=
=D8=AF =D9=85=D8=B4=D8=A7=D8=B1=D9=83=D8=AA=D9=83=D9=85 </span></b><b><span=
 lang=3D"AR-EG" style=3D"font-size:22pt;line-height:115%;font-family:Arial,=
&quot;sans-serif&quot;;color:rgb(192,0,0)">=D8=A7=D9=84=D8=B4=D9=87=D8=A7=
=D8=AF=D8=A9</span></b><b><span lang=3D"AR-JO" style=3D"font-size:22pt;line=
-height:115%;font-family:Arial,&quot;sans-serif&quot;;color:rgb(192,0,0)">
=D8=A7=D9=84=D9=85=D8=B0=D9=83=D9=88=D8=B1=D8=A9 =D8=A7=D8=B9=D9=84=D8=A7=
=D9=87 =D9=8A=D8=B1=D8=AC=D9=89 =D8=A7=D9=84=D8=AA=D9=88=D8=A7=D8=B5=D9=84 =
=D9=85=D8=B9 =D8=A3/ =D8=B3=D8=A7=D8=B1=D8=A9 =D8=B9=D8=A8=D8=AF =D8=A7=D9=
=84=D8=AC=D9=88=D8=A7=D8=AF =E2=80=93 =D8=AC=D9=88=D8=A7=D9=84 &amp; =D9=88=
=D8=A7=D8=AA=D8=B3 =D8=A7=D8=A8
00201062992510 - 00201096841626</span></b><span lang=3D"AR-SA" style=3D"fon=
t-size:20pt;line-height:115%;font-family:Arial,&quot;sans-serif&quot;"></sp=
an></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><b><span lang=3D"=
AR-SA" style=3D"font-size:20pt;line-height:115%;font-family:&quot;Simplifie=
d Arabic&quot;,&quot;serif&quot;;color:black">=C2=A0</span></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><u><span lang=3D"=
AR-EG" style=3D"font-size:48pt;line-height:115%;font-family:Arial,&quot;san=
s-serif&quot;;color:red">=D9=8A=D8=B9=D9=82=D8=AF =D9=81=D9=8A =D9=86=D9=81=
=D8=B3 =D8=A7=D9=84=D8=AA=D8=A7=D8=B1=D9=8A=D8=AE :-</span></u></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">1.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D8=AC=D9=88=D8=AF=D8=A9 =D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=
=3D"LTR" style=3D"font-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">2.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D8=AA=D9=88=D9=83=D9=8A=D8=AF =D8=A7=D9=84=D8=AC=D9=88=D8=AF=D8=A9 =D8=
=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D"fo=
nt-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">3.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D9=85=D8=B1=D8=A7=D9=82=D8=A8=D8=A9 =D8=A7=D9=84=D8=AC=D9=88=D8=AF=D8=
=A9 =D8=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" styl=
e=3D"font-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">4.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D8=A5=D8=AF=D8=A7=D8=B1=D8=A9 =D8=A7=D9=84=D9=85=D8=AE=D8=A7=D8=B7=D8=
=B1 =D8=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" styl=
e=3D"font-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">5.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D8=A7=D9=84=D8=A8=D9=8A=D8=A6=D9=8A=D8=A9 =D8=A7=D9=84=D9=85=D8=B9=D8=
=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D"font-size:20pt"></span></p=
>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">6.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D8=A7=D9=84=D8=B3=D9=84=D8=A7=D9=85=D8=A9 =D9=88=D8=A7=D9=84=D8=B5=D8=
=AD=D8=A9 =D8=A7=D9=84=D9=85=D9=87=D9=86=D9=8A=D8=A9 =D8=A7=D9=84=D9=85=D8=
=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D"font-size:20pt"></sp=
an></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">7.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D8=B3=D9=84=D8=A7=D9=85=D8=A9 =D8=A7=D9=84=D8=BA=D8=B0=D8=A7=D8=A1 =D8=
=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D"fo=
nt-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">8.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D8=A7=D9=84=D9=85=D8=AE=D8=AA=D8=A8=D8=B1=D8=A7=D8=AA =D8=A7=D9=84=D9=
=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D"font-size:20pt=
"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">9.<span style=3D"font-variant-numeric:normal;font=
-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:no=
rmal;font-family:&quot;Times New Roman&quot;"> </span></span><span dir=3D"R=
TL"></span><span lang=3D"AR-SA" style=3D"font-size:20pt;font-family:Arial,&=
quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=D8=A9 =D9=85=D8=AF=D9=8A=D8=
=B1 =D8=A3=D9=85=D9=86 =D8=A7=D9=84=D9=85=D8=B9=D9=84=D9=88=D9=85=D8=A7=D8=
=AA</span><span dir=3D"LTR"></span><span dir=3D"LTR"></span><span dir=3D"LT=
R" style=3D"font-size:20pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></sp=
an> ISO 27001</span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">10.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=AA=D9=83=D9=86=D9=88=D9=84=D9=88=D8=AC=
=D9=8A=D8=A7 =D8=A7=D9=84=D9=85=D8=B9=D9=84=D9=88=D9=85=D8=A7=D8=AA</span><=
span dir=3D"LTR"></span><span dir=3D"LTR"></span><span dir=3D"LTR" style=3D=
"font-size:20pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></span> ISO / I=
EC 20000</span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">11.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=AA=D9=82=D9=8A=D9=8A=D9=85 =D8=A7=D9=84=
=D9=85=D8=B7=D8=A7=D8=A8=D9=82=D8=A9 =D9=84=D8=B4=D8=B1=D9=83=D8=A7=D8=AA =
=D8=A7=D9=84=D8=AA=D9=81=D8=AA=D9=8A=D8=B4</span><span dir=3D"LTR"></span><=
span dir=3D"LTR"></span><span dir=3D"LTR" style=3D"font-size:20pt"><span di=
r=3D"LTR"></span><span dir=3D"LTR"></span> ISO / IEC 17020</span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">12.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=B9=D9=84=D8=A7=D9=85=D8=A9 =D8=A7=D9=84=
=D9=85=D8=B7=D8=A7=D8=A8=D9=82=D8=A9 =D8=A7=D9=84=D8=A3=D9=88=D8=B1=D9=88=
=D8=A8=D9=8A=D8=A9 =D8=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span d=
ir=3D"LTR"></span><span dir=3D"LTR"></span><span dir=3D"LTR" style=3D"font-=
size:20pt"><span dir=3D"LTR"></span><span dir=3D"LTR"></span> CE Mark</span=
></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">13.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=A7=D9=84=D8=AA=D8=AE=D8=B7=D9=8A=D8=B7 =
=D8=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D=
"font-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">14.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=A5=D8=AF=D8=A7=D8=B1=D8=A9 =D8=A7=D9=84=
=D9=85=D9=88=D8=A7=D8=B1=D8=AF =D8=A7=D9=84=D8=A8=D8=B4=D8=B1=D9=8A=D8=A9 =
=D8=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D=
"font-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">15.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=A7=D9=84=D8=B5=D9=8A=D8=A7=D9=86=D8=A9 =
=D8=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D=
"font-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">16.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=A7=D9=84=D8=A7=D9=86=D8=AA=D8=A7=D8=AC =
=D8=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D=
"font-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">17.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=A7=D9=84=D9=85=D8=AE=D8=A7=D8=B2=D9=86 =
=D9=88=D8=A7=D9=84=D9=85=D8=B3=D8=AA=D9=88=D8=AF=D8=B9=D8=A7=D8=AA =D8=A7=
=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D"font-=
size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"margin:0in 0.5=
in 0.0001pt 0in;text-align:center;line-height:normal;direction:rtl;unicode-=
bidi:embed;font-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span=
 style=3D"font-size:20pt">18.<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span><span dir=3D"RTL"></span><span lang=3D"AR-SA" style=3D"font-s=
ize:20pt;font-family:Arial,&quot;sans-serif&quot;">=D8=B4=D9=87=D8=A7=D8=AF=
=D8=A9 =D9=85=D8=AF=D9=8A=D8=B1 =D8=A7=D9=84=D8=AA=D8=B3=D9=88=D9=8A=D9=82 =
=D8=A7=D9=84=D9=85=D8=B9=D8=AA=D9=85=D8=AF</span><span dir=3D"LTR" style=3D=
"font-size:20pt"></span></p>

<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;directio=
n:ltr;unicode-bidi:embed;margin:0in 0in 10pt;line-height:115%;font-size:11p=
t;font-family:Calibri,&quot;sans-serif&quot;"><b><u><span style=3D"font-siz=
e:24pt;line-height:115%;color:red"><span style=3D"text-decoration-line:none=
">=C2=A0</span></span></u></b></p>

<p class=3D"MsoNormal" align=3D"center" dir=3D"RTL" style=3D"text-align:cen=
ter;margin:0in 0in 10pt;line-height:115%;direction:rtl;unicode-bidi:embed;f=
ont-size:11pt;font-family:Calibri,&quot;sans-serif&quot;"><span dir=3D"LTR"=
 style=3D"font-size:22pt;line-height:115%">=C2=A0</span></p></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAPOKP-zGAmmbV7MWX3UH3bbze9_uv%2Bdbx0uE%2B3mNj=
Py3tx%2Bdpw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAPOKP-zGAmmbV7MWX3UH3bbze9_u=
v%2Bdbx0uE%2B3mNjPy3tx%2Bdpw%40mail.gmail.com</a>.<br />

--000000000000843a2605e48a57a7--
