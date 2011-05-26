module PurrfectJson::CatJsonConverter

  CATS = [
        %{
                                                   AAAA
                                                   AAAAA
                                                     AAAA
                                                      AAAA
                                                      AAAAA
                                                      AAAAAA
                                                      AAAAAA
                                                      AAAAAA
      AAAA  AAA                                       AAAAAA
     AAAAAAAAAAAAAAAAAAA                              AAAAAA
     AAAAAAAAAAAAAAAAAAAAAAAAAAA         AAAAAAAAAAAAAAAAAAA
     AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
     AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
     AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
      AAAA         AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                     AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
               AAAAAAA    AAAAAA                    AAAAA   AAAAAAAAAAAAA
              AAAAA      AAAAAA                    AAAAAAA           AAAAA
              AAAA     AAAAAAA              AAAAAAAAAAAA            AAAAAA
                      AAAAAAA               AAAAAAAA               AAAAAAA
                      AAAAAA                                     AAAAAAA
        },
        %{
                                                                 AAAA
                                                                AAAAAA
                                                                AAAAAA
                                                                AAAAAA
                                                               AAAAAA
                                                              AAAAAA
                                                             AAAAAA
                                                           AAAAAAA
                                   AAAAAAAAA              AAAAAAA
                               AAAA AAAAAAAAAAA          AAAAAAA
                    AA       AAAAAAAAAAAAAAAAAAAA       AAAAAAA
                 AAAAAAAAA  AAAAAAAAAAAAAAAAAAAAAA     AAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA  AAAAAAA
              AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
               AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
               AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
               AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                      AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                       AAAAAAAAAAAAAAA    AAAAAAAAAAAAAAA
                        AAAAAAAAAAAAA       AAAAAAAAAAAAA
                        AAAAAAAAAAAA         AAAAAAAAAAA
                        AAAAAAAAAAAA         AAAAAAAAAA
                        AAAAAAAAAAAA         AAAAAAAAAA
                        AAAAAAAAAAAA          AAAAAAAAA
                        AAAAA  AAAAA          AAAAAAAAA
                        AAAAA  AAAAA           AAAAAAA
                        AAAA   AAAAA           AAAAAAA
                       AAAA    AAAAA           AAAAAAA
                       AAAA    AAAA            AAAAAA
                      AAAA    AAAAA           AAAAAA
                      AA     AAAAA           AAAAAA
                              AAA           AAAAAAA
                                              AAA
        },
        %{
                                                  AAAAAAAA
                                AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                             AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                           AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                          AAAAAAAAAAAAAAAAAAAAAAAAAAA    AAAAAAAAAA
                         AAAAAAAAAAAAAAAAAAAAAAAAAAA        AAAAAAAAA
                       AAAAAAAAAAAAAAAAAAAAAAAAAAAAA           AAAAAAA
                       AAAAAAAAAAAAAAAAAAAAAAAAAAAA             AAAAAAA
                 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA                AAAAA
               AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
            AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
           AAAAAAAAAAAAAAAAAAAAAAAAAAA  AAAAAAAAAA
             AAAAAAAAAAAAAAAAAAAAAAAA      AAAAAAA
              AAAAAAAAAAAAAAAAAAAAAA        AAAAA
               AAAAAAAAAAAAAAAAAAAA        AAAAA
                AAAAAA  AAAAAAAAAAA        AAAA
                       AAAAAAAAAAAA       AAAA
                         AAAAAAAAAA       AAA
                          AAAAAAAAA     AAAA
                          AAAAAAAAA    AAAA
                          AAAAAAAAA
                          AAAAAAAA
                          AAAAAAAA
                          AAAAAAAA
                          AAAAAAA
                          AAAAAAA
                          AAAAAAA
                          AA AAAA
        }
  ]

  def self.extended(base)
    base.extend PurrfectJson::AsciiMaskConverter
    base.converts :json, :cats do
      CATS[rand(CATS.size)]
    end
  end

end