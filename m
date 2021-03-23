Return-Path: <clang-built-linux+bncBAABBE6F42BAMGQEKXTGQZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 30430345950
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 09:11:00 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id b78sf1411574qkg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 01:11:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616487059; cv=pass;
        d=google.com; s=arc-20160816;
        b=FcFhnpYyp05A4kx0w5xnKAQpBzUdsZ/h8/iyVkvP0ZR/foOEp0HSAVmHYjB9wDgVjE
         lgR/wBgSGpyU6I1O0W0FET6CEfFKy02OqV5Dr0ShbDMoP6LNSHqbyOp6UuuWujh1hrGT
         zYdK3yPnCo0gCQIlj4US1nFXixLws3grOH24rxmgY+DcQCnHziti6jot1ZY4k0bm23sd
         JcSqd73cFc9dI9BRTiHlVoAQ9d0AbCdWdJrChed9hdE+i32MsXc0D//B2FxqUGL9fXTw
         j4XRKbpdy4RW/alPfSHjhusvk2hCHq1hKiucJ8jXaTYOK4ejxUPViY9GSkRZYU1TqiW2
         Jmzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references
         :content-transfer-encoding:mime-version:subject:message-id:reply-to
         :from:date:dkim-signature;
        bh=SIZv9LHg8tRD3CiWODCucrPyYQZuLqqXJ+ooGwEfKIs=;
        b=LdOK6M4LZUZRj2BcVoLY61dyNywTGGnzDrcJ+8hneNOu3Bj/i06D/mnd58RFbuwpzO
         aJg9/Wn0gsZgXiJrdd/DVPJWRGlSoeFYhBnnOSSI5JxEG5ibFTjXaKkkiOLSgnofzc5B
         aHLdsRA2fgW9geASbN2nWzLR7DmpqlbC+MItRs/D94uskygOJ+ROkhCwolzUpx5kMBy9
         kn+ShY2Md6bWqxbKb7RToO9h4GDjNMqPYW6psD7ZdIhdHitRVOKh8pZK3P1T07eDIges
         nI5yMcf72GUYEXQ1Uj8lNhdYtaYIaFuOBePMYAm/u9cMEo1h9kX/duuvQ/6rE1Q4Fp88
         RdiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=o04p+qTg;
       spf=pass (google.com: domain of boacoteiv0ire@yahoo.com designates 106.10.242.110 as permitted sender) smtp.mailfrom=boacoteiv0ire@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:reply-to:message-id:subject:mime-version
         :content-transfer-encoding:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SIZv9LHg8tRD3CiWODCucrPyYQZuLqqXJ+ooGwEfKIs=;
        b=iCbdzQsr2kqsnrfYrCZvjpQow6eWECU5VMEdauctmpjprOqCnjG4KX0pUBzeUXjpd1
         7hR3pI1sJ7xbBWWiiWTyh2AmWC3bibD9Yw2QBaiKEG9kb+s2Dg+jPKIJ3pa/T8iVBk/1
         XxljcAKqv4+/B42kN+ZRi7SrMnwEMK/gG3x7yjQ97SNDQ1WDuNIoTjMfKLKNF8HFm78V
         vJA6gKz9fccGpNjdNeEsS4OZrfyEbbakQvbhzsOZLybOpQS/VECUmXwNl/TvYNcBOGgl
         YtLWMb1/RJ4nHIRBcVFUP65kx3TlX3r/Bze0y0o7Mhw4iqpzpb8Afq+/0nvh2CSoyR4x
         6+uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:reply-to:message-id:subject
         :mime-version:content-transfer-encoding:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SIZv9LHg8tRD3CiWODCucrPyYQZuLqqXJ+ooGwEfKIs=;
        b=jtR8meldHt1dDnkd0Q0cXoTglZ22qCLB4VICXO1yWnHNOuQ5u9ex0su7iFoDCp9Dsc
         pe/qyitix6HSEfPVDhhw1jBzO/HOEsqBNJPCqdufmh/kIJwUBQJplzlm9fU/0+VKPX/p
         J9V+MnXT2AyC84n1EfMZ0ayBdnvgMQIayJ8j2AosLyQmOQ9irzTkRTG3IEuh5pdUw6EB
         cQor5CaCVVeMxEg3C+/LICMngrDiNLa1cIFCwrXBkwVrXGFYbloYCvTVXaQ/udYo1ElN
         pW1ZWyz9NyRz0mzodVpu2F+MSjK1RRRprkBkhsq6zzjaD9vQT4QNZci9j++b7ARlP1Nm
         m03Q==
X-Gm-Message-State: AOAM5326R+I6Ef+VdUnGdaWgr9MboVCkjxw1L9A8SNTT4SJCF/H5XbOU
	vUEWkZgqmbFRkALeUmQoO24=
X-Google-Smtp-Source: ABdhPJyn7dIMsUhOO+YVZ/9YJPCyRg9C1cCRoiL+xG7+td1lW8MiouRqXu3fB7vE4Hj8fbjcYRQiYA==
X-Received: by 2002:a0c:ea81:: with SMTP id d1mr3534094qvp.57.1616487059198;
        Tue, 23 Mar 2021 01:10:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:7a6:: with SMTP id v6ls1424313qvz.1.gmail; Tue, 23
 Mar 2021 01:10:58 -0700 (PDT)
X-Received: by 2002:a0c:a425:: with SMTP id w34mr3687356qvw.2.1616487058810;
        Tue, 23 Mar 2021 01:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616487058; cv=none;
        d=google.com; s=arc-20160816;
        b=bipEDwz/Na4Y6b3eqnTznAzlSdc55jTxGEyxOHg3QuAzMnKeWNLxkLXPVLi3agjiL9
         3TJYpa2RRCKJQU9QXRgoJBsB5JZAkTJknA/zaNDwq54oyzvhpBs9UmhZnkDB6qo0KMhu
         UW5qtFiiZW2li1VRPh2ZvVvfpK/wcpaW3D4Oc+vW697i2eMJ3IbU66mPwdFk7Hyndit2
         0n4v2RPhJQZ9n3V99Vus1A6wE/GH52/KPhOfwK/HwZE0kBmt+C3ZtSbeu0NhiQhPlDH5
         HXnUx4hqjV+/iScpmzAJW11PW3I/+vaWdFoIKYiTrU7bnYp1OKCnBdO3nUHkiEQkNbjJ
         OlEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:content-transfer-encoding:mime-version:subject
         :message-id:reply-to:from:date:dkim-signature;
        bh=JDwVg1YeWij1bzVg6CXUMNyKMzRE7Mu8E1jiUyK+aHk=;
        b=CTMBlji5Xyr5+xychFz9NK8Q175doyM8fJHQtp6tSriGAXzUP+MbZ3cSD9gFaahmDe
         nTb+/qWXgzCCh7AgxMVa2RasrcpWXGSBL4cnUUggQ4dwsZt6XRFZOQFAo3a+TE53+k91
         9Og3MnGFiXKiu3uehqOjJ6VmgQRzt3EJfsMi0bl6XS0PxFY1eEVAtCReTcR81ez070Df
         DVQBtdtKMrEbZRUcw/GLa/kNwq4vGwQJCQ2g+s4/FRuzUj8PuXkEamSrMTiw4Kd6uCeW
         8YburfcdEtAjf4sC8W946rbp0d08vBlwbXvCjKFFXcHE8mCwIdvNz0bVMn1uv+2fqa4X
         Aquw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=o04p+qTg;
       spf=pass (google.com: domain of boacoteiv0ire@yahoo.com designates 106.10.242.110 as permitted sender) smtp.mailfrom=boacoteiv0ire@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Received: from sonic301-47.consmr.mail.sg3.yahoo.com (sonic301-47.consmr.mail.sg3.yahoo.com. [106.10.242.110])
        by gmr-mx.google.com with ESMTPS id o8si963739qtm.5.2021.03.23.01.10.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 01:10:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of boacoteiv0ire@yahoo.com designates 106.10.242.110 as permitted sender) client-ip=106.10.242.110;
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1616487055; bh=BZn3bVLhNIC3ZhYAECOKoirKQstiXCNtFKAOZfHMPIl=; h=X-Sonic-MF:Date:From:Subject:From:Subject; b=WA3JXnqmjrbeFfR4Q5peKYWR+hI86gJgZ4nAmU6J5j0jvKqQBhDQpbhuy00n/2D9DvN/AmmvXtZgLwIhqOt4TjqLxp1bScllIq2R8d60mojPlTtNcUJo62yvGVj0dPIEpmYUVtGwf0G73W5NXAe2c8UoXycmmUYwNl4vU3AOKCVLEBx+Hw9W0oCW+CEAnOG9BVubj0Wz6Qh+UFJfDQQ/Q+XZFwWlCtBiOrR8Ku6U9lN355dSittP7VRWvJqwC+dTLOEBCxQw39wPLPCjj/2M4mT1CdRi132UhzAEunf+n5CVV3Eg6mzBAqHgUVX8kKa2d8XxYJTQ5conn4ZhUiiKCg==
X-YMail-OSG: 6iOf4VkVM1kQrI97alEqTo1UY5USrUN9IfqEcXXcIcxP5qS2OyCXL9pSXk1JEZx
 NqOLH3nKNGe1JOvPsqIGpu8aj1iOlVGxV4KRF_RI2e2SUAFmw8xivl9_XlWywYsf2BTqiuOEgUQE
 ZQxIXNRQjF2Oh_NHyjMNv8DyKaCvGNE0BPDxHRmo9mv7c0aosiW_BlUe0f2wGkFxF0fFVaarhsPM
 yz15CwpT2GWR2S_Gh8LFRs2A37EKt_MHBO3Ch9I6gEWDdI5Ez3xdWAGvIgzkYXYkWxL.YczhFyg.
 XmnZ7EkN_EdVHvvFUM8Nt6nbVWegPGv3sUMeCxSKPNNHQ2TvCW7j_vNL7sgFP1sIAmqhIBTcqBlI
 f0dMfmVkVxI6eP.2MZkmeD.gyQkyxuiq6M4p3Ox9GQ0H66xc2iDTtcDswqoSIARoewAwWJ7Tng6y
 DTznkcabZ7Dq20QFahlBsVFsB7cfJApkmU4mCMwG9y2wZMXW661TZi3Y3B1szZPJkLzN.btHVTM2
 aiq4MyOkmdWP09d03tUAZh.KmDZzcqNEkfCZlANtSsGm5hbJUmXizKp36o8KvDcO7Zi_rilf6_Jx
 GRTZFh13zbNGPBS6.KcRv3PPYnl90PPmACYIBi9LVs_bWX8ZjqxTKbeAFeoj6aPm4AIjN.2Tr9LW
 m0NY4HqNyGmTOFTKGyqShybfguG6NWJ_nFcEbyiM22Y23YJpIGtYS5qCu51YiIo1i9PEJS99RuI7
 iptvEAwdO13rRpDRfIi6JTMrAh5V0AX24NLLku.y21TgxOTrXe3RdRYulkH4w0DKYyuz8oD7QpRO
 sVR1zZHfVS1sJIQXVjk.Jl9Z30JBIodR4ellCe8TsS8uPaRUnH84C5leGgpBnL8XTmeIeSIIbS2F
 TYN_YSBDf4GcwgmNyG5TJK2YHKZD3mLCQAdWG.Q.Q_827LqC53cX.kXxKp2JIiN0iBcaEAKiCphK
 6uyXptM0_OlXhPhFs7XJPCyeMZWV2oEJPW4kkLy8ol9zr1fPljWwdhbux_5gQ4Ej1mMVhxU3s8Dp
 dhqmVoGM29C_MDIGag52wpN2JL3d7hsERf.zzwUDKstENteen8Wk6H9aJj9CQqHSK_lZFBS99crv
 Y.D0alGQgGPhr1cAoSxQGTlxwwaz6NOjdfHO_o5NWphp05L1seCceL4NGLcW4Ul6euli7jsSJ.ah
 HUXFFIyrnj3j5oroO7pNWxY3hbkpeRAiMk0bfK8Yu6I.vE44HgFg5i4PlN5sGQNWFp6Bwe6EB0Kf
 LTpM44DHIemc8G8MBzjDGlef59cfFp_QBJwcw8GP9zxFvR1QUpM5WUhsJ1aWvxKXkcX2c54MKXno
 0ciFqMIj7OyWrSNRyeHfCZKogkFTlXeY3xH79guIupdv4ELkq6V19XfT640EtGCK1KY5RlFhZCt4
 mfPHer_q2Fl5yGBPTMB9z5.eEOSKrIMXiu5EG8UxHtOo5zM151omFhhUrRJpYgqQN2Dg_tDd1Inb
 .nPo2tNN5rWKZfmW3F1PObd.8Sos7dy1aUu61w4iKa35zVJqso6dfYn.bjKQjDHQ2gMZJV3rP_G6
 eU3A2za42DqqEH.fylKo11buB5jHbdQFiIiT9BkzE21Q1BoaKJkxVAs6DGV_FkyHRoCmstLFXWJR
 W.KltEOd1e7ms33XXxT35B0m.IYL1uc5sMm3hBGBrhpi5Ymtg2__IkSMgXIwFRb6457tccGF04pe
 Z6oxenJ.2KAJQUNtM3vcnlRrDU0UEGJ81dZZ4xcGRVY5oP6xQrJR8F30ZHmcJI8NAw.LrA2DkVI2
 0Wb2VJsVIcF12a1vQs_vWovDcyyedtSqj_9NFN3IvUdNzCfJyhPjS8EFw_Z1wsx9iyI6f_AtNMF3
 XUqAOdKnCiZrO6EoYA5vuyThTHpwpCx9i2CsvvwonrHG7JX55C1hYNbA7GwMC1N_LV6_8uR9XMnp
 _n9tqxGJuj9hDJ9Y9GUeQqcQ07IK0Rtm1VYkckeRWAH.ZZxoLhq7m_rzW.MhUEW3Mfm4jNaWWMXX
 ULdrbh8O0pSM4E0jZyBVG6kwTbGnLiNJfl52LFMOxckcLNUdcx7y4DIW2J7bIu0dpLlU.RJMfZ9k
 5cSiQ6ICePya8frRrMluB5atqtdKLNEylm4UCSRXL0a6iv9aIZtrW.oQt5rc3CBaFQDJvrpKvqrA
 AdaJ.5PkB02OuqJ_w6Jl_IrpoY6ntIgtOnQp0ibHc73gY.qGMA6EJvtJC8QQLBSEIyyqdXyKueGN
 hdgs7m.a_PkWmURSb_Ua9pcQ27Xq0fbZFN8nnVwFS9qOFH7M2AGAhbMZagY0hgQjKIDmXet.uw1f
 _mI0G92.AwPJrpC9r80o0eTD56Hge8qSW0FISWPB7CbGROjyZjpXg7DbQn6SVFYWiZwdFR9fCVHD
 06jOWv2H7OJLvm8oqLqXrEZkw0lL2ktl3a5Jpt0z0idJdWwa8v7z2ttYLq.WLIpexqTBrTcYVuzq
 UV0MTAxW3bMUQhk7Sc20QG628gEr62_HrEKArlte7bxLXoqcaa9WkMlMipZ0rlL_4ess5DUALZVj
 0kfTU_hQKXazqSEUa2Ibc57bca3NJjBLfgGgqioQeAF52trNe8s0t386m_aWMiCXJZkXd6ptBysq
 FsQZR9dLLQogZg5tcZdDXKqkGimU0tATVFL8mSE2XutHN5_Iut9Nj8N8iqoRoXT.4UcCFHS73TU_
 z4T0Gj2uphsK7OdeE2MB9vbrPe4F2f1rpTqzQtX4vA7o.zhsTVv83PrFXjoeMFphSg.gFd7x4phr
 nhaEot8bNI11TltRQjlK.NaKrWQofZuXiKW_SgpRCqxDRKkb509a2ASjmHsu0Jr_reYB4HLgmWYZ
 _ZsBdlci6RIdTwWChEQjmAz6TikJdD_zpa5fYLJYwgqyZwujiUVPrEHhl_aeFN1iMfVTrmwvYnwl
 H4gUmJeUf8BDbjW2i0LH8dvrqRXX6kPs7TkhjqLO1SK99TJzIJAwGTz.RvDeThWUphAxAtUklEHe
 wXeIsC5yS3BXw_LC4UNIQ9ZqQiWoM38snsSpzRRSYuR7119fcU2CL3_AkaaeN9_ZhXUoktkwWTue
 WdYs_2N8S.G1SDGGXQ2Ra178Mc7qAugh4bZWF8vxNEDeRwnoHFG0aUfYzStFydrIm1rjWc_rPJNv
 t54YPlgGxhTt0cOdBBlkuoyes0.GC1wvTMi211SZGRcwVZDXOZbodBeBhQ0EHpvcgx_clSklaBvg
 UVt2xmmKJl1UT.2ttjT3dd1njPu.NPUiUPfbleV3oWUd9v_AbfMD5xUXIjaGZnO50go_5EXBH_fB
 fic2FB2LnsgvEmPkK6Y1xvnhM71.qwOw9Qsh6rCRC53rzDbGQlVR8LRglTeGOKGGUdYkKGxzNjBm
 YmeGBE9homafDYytFPX8qCTc9l7oBT6fvALbb_DA8pibDDdEl4Wd2ejANMyMZNbjvpSPVdwgh_wj
 tFFS9Ez0j_QOnZc9P3y44eUv5VcmAydN1Dn5E6OSi56AJiGSfUFoEvvbfyqIqkUQsfYX47S8ylY3
 9Em7iUktQ0l_UQaeLa87zCD6sBW3sd1dfoeMtajbanaqGaNwYSR8yEEla_cXkcp1f7GduSZ_Mjv6
 jR5TyxVQA14gTafaGCCYsvwx0LY3m6SxI6b4FnxK4UalaKk2Rl8YKgWGjp.79GzLkgMmrptND29x
 FCYgAz3SnbRELaWpF7MLqQ0zn5HjIC5Gu0_HjwfyBuAaRFAOhgHVY823ZMPHfXLlsFgO1W7pdyHY
 Oq6jjD4eBz2yn.5M4j8x9l2FjQQmJqKBcp5sbQ7m8nFrIZKc.MGcHE.AqS8LPi.1gaxZRmauiWwj
 jlpLe7aaVSJB5uT8FkNsP49pN1OCQQbtxixNGp0eRw.ysAis1XOggxbgCQisD7gV1omzqi16NNCk
 6xS7D6vJmIxp_GNTsMpkFaQ78vEJa1nT3kiNHxKry94XqBN3.Do7.lNGNiTUCB2ECzXL5MC_wt_F
 HSTMfI5uFmneSsr5GwSXyORSgVXf_BIzNSNhQ8ckbWgfIIvHagy05ruojICkryfPIdimBkjoumG0
 hNwIMKkFxiG7PUnzFGWC0uWYCnvxyhu8TctYK7xkuK12Y6MdmK1q2lP9RHNA4_HeTfW6hb4TaNRd
 II.L7EJdaJa3bUvGMDxJ3.xq7pevOCT_ICzrH74eGtmXFiwiMjxNteaeYv3DKVWHyUEBWifNhoyt
 NXw8ND6nre2tQsq09gmUp4XquWLVDyVa9unrh9CmY469kR0bn8dYvbUy_4bWR7QTaTIwHLoM851u
 3.8lFr0E_KqjCmH5ubE5qXYvVaDqXVJCOGdOf4uXMhebvZDNF83fuV21ZpYiRyGtAK21x9yqM3j3
 cqkFLs.w5vzbh5Ai52wcAYttrHtEuR76xICoJLz8fiYwndNidwatl1KZ9iwxPaPpEyLBvO3BoDOU
 xxMOnVwFSzzwaW4YNpIXmKFmfsuP1elBsC8OlLPG_iWeNcPGlsRdI1wQnAzuHwNw5gqF6t4Wy60V
 mBiE441V7BAT4jmcfKeYPtVDj47zKGYMZf1iuIR2PIvM7GXzdbtaOg4q5GpXTSSv8Fd5.UAW0HLd
 FAMtAgqsStk9eXvC4CDfDNiXBN9fA38zwS5aZo0eAa19cqoKt1WOEpDWNl5yB3791HzrhrxNYYpo
 p5ldLyEaiwtu6XDa2D0atK8WfD_SNWtdSpf1ASGGeSR7cH__ptAGCWa7UmboOEPKSbQiZO1OOvQh
 KPcdqyltfzaKoZdaKjFEMsZEf8IcN.wky.36xIE.0N28Bc2tTwKjhf1FIl3w6qmupdxsfDvDNPU4
 p4MDdzea6Y.QSWiaqJNH7ucrHQ4XfuJUXDbKWz6Q0M1NEvWvH5frpdW.sGnYfYrfa1lMUOB.DCB3
 COzHzi3VipGV.sN6PiKsHFh6K.9z3ATeMgHNWSTgkjCC6ksMFz5duHA57BGBzVZkBV5GrJs8n.Zk
 2gLWPabsprCroa47cofRbzNHbCF1IA8w44Txyv.P84oJzJ7zUTfCktK7SoHV8bQJK7Zl.gz4Qa1I
 MklkMkj.49NQPmhto8sKCleCIumMP_oncKwLTrtyfsfLoPjyX5QUUA7e7zqmzAlh2oiTQMAeicC7
 NrwtTQlbC7iG7ImBRsS00ncM7Q0Ya9vzMrrlIAKtNkm_B59VK8VGfyltyFwruYUrqZLB_8tYUdD.
 U_jxSUfmVglv6vDepqp_9AdO.zutdOsYFXHLVXwJ98kSRqPFHvruZ2Wqsi3OEV2d3J3n6cvRWhdG
 Zjlgxrq6EyFE26t2qSElSQku761OGl.w4JdrstZ57tU.VDDyQnQw0W5F1PzLp7gsFZkqOUs.cNJH
 .VjJnz.8b5v1lf15eqC0A9Wbf88jSZPjPlWUnnO9KdrUCasf_EhOMMFeXhuwii_51SCI-
X-Sonic-MF: <boacoteiv0ire@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.sg3.yahoo.com with HTTP; Tue, 23 Mar 2021 08:10:55 +0000
Date: Tue, 23 Mar 2021 08:08:54 +0000 (UTC)
From: "'Peter Florian' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Reply-To: peterflorian019@gmail.competer
Message-ID: <375474599.1078048.1616486934516@mail.yahoo.com>
Subject: Hello,
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
References: <375474599.1078048.1616486934516.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17936 YMailNodin Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36
X-Original-Sender: boacoteiv0ire@yahoo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=o04p+qTg;       spf=pass
 (google.com: domain of boacoteiv0ire@yahoo.com designates 106.10.242.110 as
 permitted sender) smtp.mailfrom=boacoteiv0ire@yahoo.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
X-Original-From: Peter Florian <boacoteiv0ire@yahoo.com>
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



Hello,


My name is Mrs. Peter Florian and I am a British Citizen. My husband died r=
ecently on Coronavirus and I am presently in hospital suffering Cancer Dise=
ase. My husband has a deposit of 15.200.000 GBP in a prime Bank here in Lon=
don. Before my husband was taken to Isolation center where he died, he told=
 me to use the funds to establish animal care clinics. We have special love=
 for animals. Due to my present health condition, I will not be able to han=
dle this project. Therefore, I want to donate the 15.200.000.00 GBP to you =
so that you will set up an animal care Foundation in your country. A clinic=
 where animals will be treated in your country for free. I see in televisio=
n that people donates funds to orphanage homes and don't care about animals=
. I and my husband wants to make a difference in the world to let people un=
derstand that animals are important to nature. Please let me know your inte=
rest so that I will ask my lawyer to prepare a contract Agreement on your n=
ame. Please don't forget that my health condition is bad, therefore I want =
you to reply this message as soon as possible so you will receive the funds=
 before anything happens to me. I am waiting to hear from you.


Thank you,
Mrs. Peter Florian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/375474599.1078048.1616486934516%40mail.yahoo.com.
